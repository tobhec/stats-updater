library(blastula)
library(glue)
library(knitr)

body_text <- "## Daily Data Update "
index <- 0

for (indic in indics) {
  index <- index + 1
  revision_table <- revision_list[[index]]   # TRUE/FALSE table
  diff_table     <- as.data.frame(diff_list[[index]])    # numeric differences
  indic_colored <- as.data.frame(indic)   # copy for coloring
  
  revision_sentences <- ""
  row_ids <- indic[[1]]                      # first col = row IDs
  col_names <- names(indic)
  
  # Loop rows & columns once
  for (r_index in seq_len(nrow(indic))) {
    for (c_index in 2:ncol(indic)) {   # skip ID column
      if (revision_table[r_index, c_index]) {
        # Add color
        indic_colored[r_index, c_index] <- sprintf(
          "<span style='background-color:orange;'>%s</span>",
          indic_colored[r_index, c_index]
        )
        
        # Add sentence
        row_label <- row_ids[r_index]
        col_label <- col_names[c_index]
        value     <- diff_table[r_index, c_index]
        
        revision_sentences <- paste0(
          revision_sentences,
          sprintf(
            "%s, %s has been revised by %.2f.<br>",
            row_label, col_label, value
          )
        )
      } else {
        # Keep as string if not revised
        indic_colored[r_index, c_index] <- as.character(indic_colored[r_index, c_index])
      }
    }
  }
  
  # Build HTML table
  table <- kable(indic_colored, format = "html", escape = FALSE)
  
  # Build email body
  part <- glue("
  <span style='color:blue; font-weight:bold;'>{names(indics)[index]}</span>
  {table}
  {revision_sentences}
  
  [See full dataset here]({links[[index]]})
  
  --------------------------------------------------------
  ")
  
  body_text <- paste0(body_text, "\n\n", part)
}

email <- compose_email(body = md(body_text))
email


