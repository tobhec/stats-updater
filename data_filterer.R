# Filter out the unnecessary data from the data table
if("obs_status" %in% names(i_temp[[code]])) {
  i_temp[[code]] <- i_temp[[code]][, obs_status := NULL]
}
if("obs_conf" %in% names(i_temp[[code]])) {
  i_temp[[code]] <- i_temp[[code]][, obs_conf := NULL]
}

if(dropdowns_list[[code]] == "geo") {
  
  # Filter out for the subscriber choices
  i_temp[[code]] <- i_temp[[code]][geo %in% cross_section_filters & TIME >= as.numeric(period)]
  
  # Change the country code to the real name 
  i_temp[[code]] <- cc_dict[i_temp[[code]], on = "geo"]
  i_temp[[code]][, geo := NULL]
  
  # Make the column name more clean
  setnames(i_temp[[code]], old = c("Country", "TIME", "obs_value"), new = c("Country", "Time", "Value"))
  i_temp[[code]] <- dcast(i_temp[[code]], Country ~ Time, value.var = "Value")
  
  } else if (dropdowns_list[[code]] == "CURRENCY") {
    
    # Filter out for the subscriber choices
    i_temp[[code]] <- i_temp[[code]][CURRENCY %in% cross_section_filters & TIME >= as.numeric(period)]
    
    # Make the column name more clean
    setnames(i_temp[[code]], old = c("CURRENCY", "TIME", "obs_value"), new = c("Currency", "Time", "Value"))
    i_temp[[code]] <- dcast(i_temp[[code]], Currency ~ Time, value.var = "Value")
    
}



