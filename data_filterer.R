# Filter out the unnecessary data from the data table
if("obs_status" %in% names(i_temp[[indicator]])) {
  i_temp[[indicator]][, obs_status := NULL]
}
i_temp[[indicator]] <- i_temp[[indicator]][geo %in% countries & TIME >= as.numeric(period)]

# Change the country code to the real name
i_temp[[indicator]] <- cc_dict[i_temp[[indicator]], on = "geo"]
i_temp[[indicator]][, geo := NULL]
setnames(i_temp[[indicator]], old = c("Country", "TIME", "obs_value"), new = c("Country", "Time", "Value"))

i_temp[[indicator]] <- dcast(i_temp[[indicator]], Country ~ Time, value.var = "Value")
