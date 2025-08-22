# BUG NOW YOU CANT LOAD TOO FEW COUNTRIES AND YEARS.
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


# Create function to calculate differences between each value in two tables
calc_abs_diff <- function(new_table, old_table) {
  # Check that the tables have the same number of columns
  if(ncol(new_table) == ncol(old_table))
  {
    # Get numeric columns only
    num_cols <- names(new_table)[sapply(new_table, is.numeric)]
  } else {
    # Get numeric columns only and exclude the last column
    num_cols <- names(new_table)[sapply(new_table, is.numeric)]
    num_cols <- setdiff(num_cols, tail(names(new_table), 1))
  }
  
  # Start diff table with the ID column from new_table
  diff_table <- data.table(ID = new_table[[1]])
  setnames(diff_table, "ID", names(new_table)[1])  # keep same name (e.g. Country)
  
  # Add numeric differences
  for (col in num_cols) {
    diff_table[[col]] <- new_table[[col]] - old_table[[col]]
  }
  
  return(diff_table)
}


# Function to compare and flag revisions
check_for_revisions <- function(dt) {
  id_col <- names(dt)[1]
  
  # Boolean table: TRUE if abs(diff) > 0.5
  diff_flags <- abs(dt[, -1, with = FALSE]) > 0.5
  
  # Put ID column back in front
  revision_table <- as.data.frame(cbind(dt[[1]], diff_flags))
  setnames(revision_table, "V1", id_col)  # restore proper column name
  
  return(revision_table)
}


