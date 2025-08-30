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
      #i_temp <- tables_list[names(tables_list) %in% i_codes]
      i_temp <- lapply(tables_list[names(tables_list) %in% i_codes], copy)
      titles_temp <- lapply(titles_list[names(titles_list) %in% i_codes], copy)
      units_temp <- lapply(units_list[names(units_list) %in% i_codes], copy)
      links_temp <- lapply(links_list[names(links_list) %in% i_codes], copy)
      
      for (code in i_codes) {
        countries <- i_selection[[code]]$Country
        period   <- i_selection[[code]]$Period
        source("./data_filterer.R")
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

