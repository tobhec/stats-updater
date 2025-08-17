#remotes::install_github('zeugner/MDcountrycode'); 
#remotes::install_github('zeugner/MD3'); #bit64 #zoo
#remotes::install_github('zeugner/MDstats') #XML #rsdmx
library(MDstats)

countries <- data.table(Country = c("Austria", "Belgium", "Bulgaria", "Cyprus",
                                    "Czechia", "Germany", "Denmark", "Estonia",
                                    "Greece", "Spain", "Finland", "France", 
                                    "Croatia", "Hungary", "Ireland", "Italy",
                                    "Lithuania", "Luxembourg", "Latvia", "Malta", 
                                    "The Netherlands", "Poland", "Portugal", "Romania", 
                                    "Sweden", "Slovenia", "Slovakia", "European Union",
                                    "Euro Area"),
                        geo = c("AT", "BE", "BG", "CY", "CZ", "DE", "DK",
                                         "EE", "EL", "ES", "FI", "FR", "HR", "HU",
                                         "IE", "IT", "LT", "LU", "LV", "MT", "NL",
                                         "PL", "PT", "RO", "SE", "SI", "SK", "EU",
                                         "EA"))

years <- c("2025", "2024", "2023", "2022", "2021", "2020", 
           "2019", "2018", "2017", "2016", "2015", "2014", 
           "2013", "2012", "2011", "2010")

indicators <- list("Monthly year-on-year inflation" = "ESTAT/prc_hicp_manr/M.RCH_A.CP00.",
                "Yearly average inflation" = "ESTAT/prc_hicp_aind/A.RCH_A_AVG.CP00.")


start_1 <- "2025-04"
countries_1 <- c("SE", "PL")
sdmx_code_1 <- "ESTAT/prc_hicp_manr/M.RCH_A.CP00."
for(cc in countries_1)
{
  if(cc == countries_1[length(countries_1)])
  {
    sdmx_code_1 <- paste0(sdmx_code_1, cc)
    break
  }
  sdmx_code_1 <- paste0(sdmx_code_1, cc, "+")
}
indic1 <- as.data.table(mds(sdmx_code_1, startPeriod = start_1))
indic1 <- countries[indic1, on = "geo"]
indic1[, geo := NULL]
setnames(indic1, old = c("Country", "TIME", "obs_value"), new = c("Country", "Month", "Value"))
indic1 <- dcast(indic1, Country ~ Month, value.var = "Value")

start_2 <- "2023"
countries_2 <- c("SE", "PL", "EL", "EU")
sdmx_code_2 <- "ESTAT/prc_hicp_aind/A.RCH_A_AVG.CP00."
for(cc in countries_2)
{
  if(cc == countries_2[length(countries_2)])
  {
    sdmx_code_2 <- paste0(sdmx_code_2, cc)
    break
  }
  sdmx_code_2 <- paste0(sdmx_code_2, cc, "+")
}
indic2 <- as.data.table(mds(sdmx_code_2, startPeriod = start_2))
indic2 <- countries[indic2, on = "geo"]
indic2[, geo := NULL]
setnames(indic2, old = c("Country", "TIME", "obs_value"), new = c("Country", "Year", "Value"))
indic2 <- dcast(indic2, Country ~ Year, value.var = "Value")


indics <- list("Monthly year-on-year inflation" = indic1, 
               "Yearly average inflation" = indic2)
links <- list("Monthly year-on-year inflation" = "https://ec.europa.eu/eurostat/databrowser/bookmark/aa1f3956-7570-4484-943d-848293a1c413?lang=en", 
              "Yearly average inflation" = "https://ec.europa.eu/eurostat/databrowser/bookmark/687ce2e8-9c27-4660-aad0-896b206a973e?lang=en")



