# BUG NOW YOU CANT LOAD TOO FEW COUNTRIES AND YEARS.
load_estat <- function(sdmx_code) {
  # start need to be a date in string format, such as 2025 or 2025-01
  # countries need to be a vector/list of countries with the ISO-2 code
  # sdmx_code need to include the data provider, the data flow, and the dimensions 
  # excluding year and country
  
  #country_str <- paste(countries, collapse = "+")
  #sdmx_code <- paste0(sdmx_code, country_str)
  indic <- as.data.table(mds(sdmx_code))
  #indic <- dcast(indic, Country ~ Time, value.var = "Value")
  return(indic)
}


calc_diff <- function(new_table, old_table, id_col = "Country") {
  new_dt <- new_table
  old_dt <- old_table
  # Find shared rows (based on id_col)
  shared_rows <- intersect(new_dt[[id_col]], old_dt[[id_col]])
  new_dt <- new_dt[get(id_col) %in% shared_rows]
  old_dt <- old_dt[get(id_col) %in% shared_rows]
  
  # Find shared columns (numeric columns only, excluding id_col)
  shared_cols <- intersect(
    names(new_dt)[sapply(new_dt, is.numeric)],
    names(old_dt)[sapply(old_dt, is.numeric)]
  )
  
  # Start diff table with ID column
  diff_dt <- new_dt[, ..id_col]
  setnames(diff_dt, id_col, id_col)
  
  # Calculate differences for shared columns
  for (col in shared_cols) {
    diff_dt[[col]] <- new_dt[[col]] - old_dt[[col]]
  }
  
  return(diff_dt)
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


