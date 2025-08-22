setwd("C:/Users/Tobia/raspberry_pi/stats-updater")
index <- 0
for(i in indics) {
  index <- index + 1
  fwrite(i, paste0("./vintages/", names(indics)[index]), sep = ";", col.names = TRUE)
}