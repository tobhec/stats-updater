#setwd("")

pref_list <- list(
  "per_1" = 
      list("indics" = 
          list("Yearly average inflation" = 
                list("Country" = c("EU27", "PL", "SE", "BE"),
                     "Period" = c("2020")
                      ),
              "GDP growth year-on-year" = 
                list("Country" = c("EU27", "PL", "SE", "BE"),
                     "Period" = c("2020")
                     ),
              "Annual unemployment rate" = 
                list("Country" = c("EU27", "PL", "SE", "BE"),
                     "Period" = c("2020")
                ),
              "Export volume indices" = 
                list("Country" = c("EU27", "PL", "SE", "BE"),
                     "Period" = c("2020")
                ),
              "Annual general government deficit (Net lending-borrowing)" = 
                list("Country" = c("EU27", "PL", "SE", "BE"),
                     "Period" = c("2020")
                ),
              "Annual net international investment position" = 
                list("Country" = c("PL", "SE", "BE"),
                     "Period" = c("2020")
                )
              )
          )
)

cc_dict <- data.table(Country = c("Austria", "Belgium", "Bulgaria", "Cyprus",
                                  "Czechia", "Germany", "Denmark", "Estonia",
                                  "Greece", "Spain", "Finland", "France", 
                                  "Croatia", "Hungary", "Ireland", "Italy",
                                  "Lithuania", "Luxembourg", "Latvia", "Malta", 
                                  "The Netherlands", "Poland", "Portugal", "Romania", 
                                  "Sweden", "Slovenia", "Slovakia", "European Union",
                                  "Euro Area", "European Union", "Euro Area", "Iceland"),
                      geo = c("AT", "BE", "BG", "CY", "CZ", "DE", "DK",
                              "EE", "EL", "ES", "FI", "FR", "HR", "HU",
                              "IE", "IT", "LT", "LU", "LV", "MT", "NL",
                              "PL", "PT", "RO", "SE", "SI", "SK", "EU",
                              "EA", "EU27", "EA20", "IS"))

source("./dependencies.R")
source("./data_loader.R")

for (top_key in names(pref_list)) {

  i_selection <- pref_list[[top_key]]$indics
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
  source("./vintage_saver.R")
}

