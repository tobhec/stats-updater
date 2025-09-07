#setwd("")

source("./dependencies.R")
source("./data_loader.R")
source("./config.R")

for (per in names(pref_list)) {
  
  tryCatch(
    {
      # Extract the selections by the subscriber
      i_selection <- pref_list[[per]]$indics
      i_codes <- names(i_selection)
      
      # Filter for the selections
      i_temp <- lapply(tables_list[names(tables_list) %in% i_codes], copy)
      titles_temp <- lapply(titles_list[names(titles_list) %in% i_codes], copy)
      units_temp <- lapply(units_list[names(units_list) %in% i_codes], copy)
      links_temp <- lapply(links_list[names(links_list) %in% i_codes], copy)
      dropdowns_temp <- lapply(dropdowns_list[names(dropdowns_list) %in% i_codes], copy)
      
      # Filter the data (i_temp) based on the selection made by the subscriber (per)
      for (code in i_codes) {
        
        tryCatch(
          {
            cross_section_filters <- i_selection[[code]]$Filter
            period   <- i_selection[[code]]$Period
            source("./data_filterer.R")
          },
          error = function(e) {
            cat("Error filtering data for: ", code, "\n", e$message)
            return(NA)
          }
        )
      }
      
      source("./revision_checker.R")
      source("./mail_generator.R")
      #source("./email_sender.R")
      source("./vintage_saver.R")
      
      
    },
    error = function(e) {
      cat("Error generating mail for: ", per, "\n", e$message)
      return(NA)
    }
  )

}

