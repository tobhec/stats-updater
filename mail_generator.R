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
  indic_colored <- as.data.frame(indic)   # copy for coloring
  
  if(names(indics)[index] %in% names(revision_list)) {
    revision_table <- as.data.frame(revision_list[[index]]) # TRUE/FALSE table
    diff_table     <- as.data.frame(diff_list[[index]]) # numeric differences
    vintage_table <- as.data.frame(vintages[[index]]) #vintages
    
    revision_sentences <- ""
    row_ids <- indic$Country # first col = row IDs
    col_names <- names(indic)
    new_cols <- setdiff(names(indic), names(diff_table))
    
    # Check each relevant cell if there has been new data or a revision
    for (r_index in seq_len(nrow(indic))) {
      for (c_index in 2:ncol(indic)) {   # skip ID column
        
          col_label <- col_names[c_index]
          
          if (col_label %in% new_cols && 
              !is.na(indic[r_index, ..c_index])) {
            # mark new data green
            indic_colored[r_index, c_index] <- sprintf(
              "<span style='background-color:lightgreen;'>%s</span>",
              indic_colored[r_index, c_index]
            )
            
          } else if (isTRUE(as.logical(revision_table[r_index, c_index]))) {
            # mark revision yellow
            indic_colored[r_index, c_index] <- sprintf(
              "<span style='background-color:#FFD580;'>%s</span>",
              indic_colored[r_index, c_index]
            )
            
            # Add sentence
            row_label <- row_ids[r_index]
            old_value <- vintage_table[r_index, c_index]
            diff_percentage <- diff_table[r_index, c_index] / old_value
            
            revision_sentences <- paste0(
              revision_sentences,
              sprintf("- For %s, %s has been revised by %.2f%% (from %s).<br>",
                      row_label, col_label,
                      100 * diff_percentage,   # scale to %
                      formatC(old_value, format = "f", digits = 2))
            )
          }
      }
    }
    
  }
  
  
  # Build HTML table
  table <- kable(indic_colored, format = "html", escape = FALSE)
  
  # Build email body
  part <- glue("
  <span style='color:blue; font-weight:bold;'>{names(indics)[index]}\n\n</span>
  <span style='font-size:0.9em; color:black;'>({units[names(indics)[index]]})</span><br><br>
  {table}
  {revision_sentences}
  
  [See full dataset here]({links[[index]]})
  
  --------------------------------------------------------
  ")
  
  body_text <- paste0(body_text, "\n\n", part)
}

email <- compose_email(body = md(body_text))
email


