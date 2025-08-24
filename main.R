#setwd("")

source("./config.R")
source("./dependencies.R")
source("./data_loader.R")

for (per in names(pref_list)) {
  
  tryCatch(
    {
      
      i_selection <- pref_list[[per]]$indics
      i_names <- names(i_selection)
      
      # Filter for the selections
      i_temp <- indics[names(indics) %in% i_names]
      links_temp <- links[names(links) %in% i_names]
      units_temp <- units[names(units) %in% i_names]
      
      for (indicator in names(i_selection)) {
        countries <- i_selection[[indicator]]$Country
        period   <- i_selection[[indicator]]$Period
        source("./data_filterer.R")
      }
      
      source("./revision_checker.R")
      source("./mail_generator.R")
      #source("./email_sender.R")
      source("./vintage_saver.R")
      
      
    },
    error = function(e) {
      cat("Error generating mail for: ", per, "\n")
      return(NA)  # Optional: default value
    }
  )

}

