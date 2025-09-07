# Function to calculate the differences between the cells 
# in two corresponding tables
calc_diff <- function(new_table, old_table) {
  
  # Extract the ID column
  id_col = names(new_table)[1]
  
  # Create copies of the tables
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
  
  # Boolean table: TRUE if abs(diff) > 0
  diff_flags <- abs(dt[, -1, with = FALSE]) > 0
  
  # Put ID column back in front
  revision_table <- as.data.frame(cbind(dt[[1]], diff_flags))
  setnames(revision_table, "V1", id_col)  # restore proper column name
  
  return(revision_table)
}
