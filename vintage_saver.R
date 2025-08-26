setwd("C:/Users/Tobia/raspberry_pi/stats-updater")

if (!dir.exists(paste0("./vintages/", per))) {
  dir.create(paste0("./vintages/", per), recursive = TRUE)
}

# INSTEAD OF SAVING names(i_temp)[index] I SHOULD SAVE UNIQUE CODES, SO THAT I CAN SAME THEIR NAMES IF I WANT
index <- 0
for(i in i_temp) {
  index <- index + 1
  fwrite(i, paste0(paste0("./vintages/", per, "/"), names(i_temp)[index]), sep = ";", col.names = TRUE)
}
