# List all CSV files in directory
vintage_names <- list.files(paste0("C:/Users/Tobia/raspberry_pi/stats-updater/vintages/", per), full.names = TRUE)

if(length(vintage_names) > 0){
  # Read them all into a list of data.tables
  vintages <- lapply(vintage_names, function(f) fread(f, header = TRUE))
  names(vintages) <- tools::file_path_sans_ext(basename(vintage_names))
  
  # Remove any newly added table from the vintage comparison
  shared_tables <- intersect(names(i_temp), names(vintages))
  indics_to_compare <- i_temp[shared_tables]
  vintages <- vintages[shared_tables]
  
  # Calculate differences between new data and vintages
  diff_list <- Map(calc_diff, indics_to_compare, vintages)
  
  # Make binary checks if data cells have been revised or not
  revision_list <- Map(check_for_revisions, diff_list)
}



