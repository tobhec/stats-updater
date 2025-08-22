
load_estat <- function(sdmx_code, countries, start, cc_dict) {
  # start need to be a date in string format, such as 2025 or 2025-01
  # countries need to be a vector/list of countries with the ISO-2 code
  # sdmx_code need to include the data provider, the data flow, and the dimensions 
  # excluding year and country
  
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
  
  country_str <- paste(countries, collapse = "+")
  sdmx_code <- paste0(sdmx_code, country_str)
  indic <- as.data.table(mds(sdmx_code, startPeriod = start))
  indic <- cc_dict[indic, on = "geo"]
  indic[, geo := NULL]
  setnames(indic, old = c("Country", "TIME", "obs_value"), new = c("Country", "Month", "Value"))
  indic <- dcast(indic, Country ~ Month, value.var = "Value")
  return(indic)
}



