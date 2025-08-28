# Filter out the unnecessary data from the data table
if("obs_status" %in% names(i_temp[[code]])) {
  i_temp[[code]] <- i_temp[[code]][, obs_status := NULL]
}
if("obs_conf" %in% names(i_temp[[code]])) {
  i_temp[[code]] <- i_temp[[code]][, obs_conf := NULL]
}

if(con_geos_list[[code]])
{
  i_temp[[code]] <- i_temp[[code]][geo %in% countries & TIME >= as.numeric(period)]
  
  # Change the country code to the real name
  i_temp[[code]] <- cc_dict[i_temp[[code]], on = "geo"]
  i_temp[[code]][, geo := NULL]
  setnames(i_temp[[code]], old = c("Country", "TIME", "obs_value"), new = c("Country", "Time", "Value"))
  i_temp[[code]] <- dcast(i_temp[[code]], Country ~ Time, value.var = "Value")
} else {
  setnames(i_temp[[code]], old = c("TIME", "obs_value"), new = c("Time", "Value"))
  i_temp[[code]] <- dcast(i_temp[[code]], rowid(Time) ~ Time, value.var = "Value")
  i_temp[[code]] <- i_temp[[code]][, Time := NULL]
}
