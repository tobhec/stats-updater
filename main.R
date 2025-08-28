#setwd("")

source("./dependencies.R")
source("./data_loader.R")
source("./config.R")

for (per in names(pref_list)) {
  
  tryCatch(
    {
      
      #### CHANGE i_names TO i_codes
      i_selection <- pref_list[[per]]$indics
      i_codes <- names(i_selection)
      
      
      ##### FILTER ON i_codes INSTEAD, AND ALSO DO A title_temp
      # Filter for the selections
      i_temp <- tables_list[names(tables_list) %in% i_codes]
      titles_temp <- titles_list[names(titles_list) %in% i_codes]
      units_temp <- units_list[names(units_list) %in% i_codes]
      links_temp <- links_list[names(links_list) %in% i_codes]
      
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

