library(blastula)
library(glue)
library(knitr)

body_text <- paste0(
  "## Daily Data Update - ", format(Sys.Date(), "%B %d, %Y"), "\n",
  
  "Data was downloaded around 07 AM Brussels time.\n\n",
  
  "<span style='background-color:lightgreen;'>Green numbers represent new data releases.</span>\n",
  "<span style='background-color:#FFD580;'>Orange numbers represent data revisions.</span>"
)

index <- 0
for (indic in indics) {
  index <- index + 1
  revision_table <- as.data.frame(revision_list[[index]])  # TRUE/FALSE table
  diff_table     <- as.data.frame(diff_list[[index]])    # numeric differences
  indic_colored <- as.data.frame(indic)   # copy for coloring
  
  revision_sentences <- ""
  row_ids <- indic[[1]]                      # first col = row IDs
  col_names <- names(indic)
  
  # Loop rows & columns once
  for (r_index in seq_len(nrow(indic))) {
    for (c_index in 2:ncol(indic)) {   # skip ID column
      
      if(!is.na(revision_table[r_index, c_index]))
      {
        # Check if there is new data in this table
        if (ncol(indic_colored) != ncol(diff_table) &
            c_index == ncol(indic_colored)) {
          indic_colored[r_index, c_index] <- sprintf(
            "<span style='background-color:lightgreen;'>%s</span>",
            indic_colored[r_index, c_index]
          )
        } else if (revision_table[r_index, c_index]) {
          # Add color
          indic_colored[r_index, c_index] <- sprintf(
            "<span style='background-color:#FFD580;'>%s</span>",
            indic_colored[r_index, c_index]
          )
          
          # Add sentence
          row_label <- row_ids[r_index]
          col_label <- col_names[c_index]
          value     <- diff_table[r_index, c_index]
          
          revision_sentences <- paste0(
            revision_sentences,
            sprintf(
              "- For %s, %s has been revised by %.2f.<br>",
              row_label, col_label, value
            )
          )
        } else {
          # Keep as string if not revised
          #indic_colored[r_index, c_index] <- as.character(indic_colored[r_index, c_index])
        }
      } else {
        # Keep as string if not revised
        #indic_colored[r_index, c_index] <- as.character(indic_colored[r_index, c_index])
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


