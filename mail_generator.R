library(blastula)
library(glue)
library(knitr)

body_text <- paste0(
  "## Daily Data Update - ", format(Sys.Date(), "%B %d, %Y"), "\n",
  
  "Data was downloaded around 07 AM Brussels time.\n\n",
  
  "<span style='background-color:lightgreen;'>Green numbers represent new data releases.</span>\n",
  "<span style='background-color:#FFD580;'>Orange numbers represent data revisions.</span>"
)

#index <- 0
for (indic in names(i_temp)) {
  #index <- index + 1
  indic_colored <- as.data.frame(i_temp[[indic]])   # copy for coloring
  
  if(indic %in% names(vintages)) {
    revision_table <- as.data.frame(revision_list[[indic]]) # TRUE/FALSE table
    diff_table     <- as.data.frame(diff_list[[indic]]) # numeric differences
    vintage_table <- as.data.frame(vintages[[indic]]) #vintages
    
    revision_sentences <- ""
    row_ids <- i_temp[[indic]]$Country # first col = row IDs
    col_names <- names(i_temp[[indic]])
    new_cols <- setdiff(names(i_temp[[indic]])[-1], names(diff_table)[-1])
    new_cols <- new_cols[as.numeric(new_cols) > max(as.numeric(names(diff_table)[-1]))]
    
    # Check each relevant cell if there has been new data or a revision
    for (r_index in seq_len(nrow(i_temp[[indic]]))) {
      for (c_index in 2:ncol(i_temp[[indic]])) {   # skip ID column
        
          col_label <- col_names[c_index]
          
          if (col_label %in% new_cols && 
              !is.na(i_temp[[indic]][r_index, ..c_index])) {
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
  <span style='color:blue; font-weight:bold;'>{indic}\n\n</span>
  <span style='font-size:0.9em; color:black;'>({units[indic]})</span><br><br>
  {table}
  {revision_sentences}
  
  [See full dataset here]({links[[indic]]})
  
  --------------------------------------------------------
  ")
  
  body_text <- paste0(body_text, "\n\n", part)
}

email <- compose_email(body = md(body_text))
email


