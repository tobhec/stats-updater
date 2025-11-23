setwd("C:/Users/Tobia/raspberry_pi/stats-updater")

if (!dir.exists(paste0("./vintages/", format(Sys.Date(), "%Y-%m-%d")))) {
  dir.create(paste0("./vintages/", format(Sys.Date(), "%Y-%m-%d")), recursive = TRUE)
}

index <- 0
for(table in tables_list) {
  index <- index + 1
  
  # Make a copy to avoid modifying the original
  tmp <- copy(table)
  tmp[, TIME := as.character(TIME)]
  
  # Save as vintage
  fwrite(tmp,
         file = paste0("./vintages/", format(Sys.Date(), "%Y-%m-%d"), "/", names(tables_list)[index]),
         sep = ";",
         col.names = TRUE)
}
