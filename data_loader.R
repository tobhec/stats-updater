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
                                    "Euro Area", "European Union", "Euro Area", "Iceland"),
                        geo = c("AT", "BE", "BG", "CY", "CZ", "DE", "DK",
                                         "EE", "EL", "ES", "FI", "FR", "HR", "HU",
                                         "IE", "IT", "LT", "LU", "LV", "MT", "NL",
                                         "PL", "PT", "RO", "SE", "SI", "SK", "EU",
                                         "EA", "EU27", "EA20", "IS"))

years <- c("2025", "2024", "2023", "2022", "2021", "2020", 
           "2019", "2018", "2017", "2016", "2015", "2014", 
           "2013", "2012", "2011", "2010")

indicators <- list("Monthly year-on-year inflation" = "ESTAT/prc_hicp_manr/M.RCH_A.CP00.",
                "Yearly average inflation" = "ESTAT/prc_hicp_aind/A.RCH_A_AVG.CP00.")


start_1 <- "2025-04"
countries_1 <- c("SE", "FR")
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
countries_2 <- c("SE", "FR")
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

start_3 <- "2020"
countries_3 <- c("EU27_2020", "SE")
sdmx_code_3 <- "ESTAT/nama_10_gdp/A.CLV_PCH_PRE.B1GQ."
for(cc in countries_3)
{
  if(cc == countries_3[length(countries_3)])
  {
    sdmx_code_3 <- paste0(sdmx_code_3, cc)
    break
  }
  sdmx_code_3 <- paste0(sdmx_code_3, cc, "+")
}
indic3 <- as.data.table(mds(sdmx_code_3, startPeriod = start_3))
indic3 <- countries[indic3, on = "geo"]
indic3[, geo := NULL]
setnames(indic3, old = c("Country", "TIME", "obs_value"), new = c("Country", "Year", "Value"))
indic3 <- dcast(indic3, Country ~ Year, value.var = "Value")


start_4 <- "2024-01"
countries_4 <- c("EU27_2020", "SE")
sdmx_code_4 <- "ESTAT/namq_10_gdp/Q.CLV_PCH_PRE.SCA.B1GQ."
for(cc in countries_4)
{
  if(cc == countries_4[length(countries_4)])
  {
    sdmx_code_4 <- paste0(sdmx_code_4, cc)
    break
  }
  sdmx_code_4 <- paste0(sdmx_code_4, cc, "+")
}
indic4 <- as.data.table(mds(sdmx_code_4, startPeriod = start_4))
indic4 <- countries[indic4, on = "geo"]
indic4[, geo := NULL]
setnames(indic4, old = c("Country", "TIME", "obs_value"), new = c("Country", "Year", "Value"))
indic4 <- dcast(indic4, Country ~ Year, value.var = "Value")


indics <- list("Monthly year-on-year inflation" = indic1, 
               "Yearly average inflation" = indic2,
               "GDP growth year-on-year" = indic3,
               "GDP growth quarter-on-quarter, seasonally and calendar adjusted" = indic4)
links <- list("Monthly year-on-year inflation" = "https://ec.europa.eu/eurostat/databrowser/bookmark/aa1f3956-7570-4484-943d-848293a1c413?lang=en", 
              "Yearly average inflation" = "https://ec.europa.eu/eurostat/databrowser/bookmark/687ce2e8-9c27-4660-aad0-896b206a973e?lang=en",
              "GDP growth year-on-year" ="https://ec.europa.eu/eurostat/databrowser/bookmark/06ebf0df-05f1-43be-80ba-ad2a53ccc467?lang=en",
              "GDP growth quarter-on-quarter, seasonally and calendar adjusted" = "https://ec.europa.eu/eurostat/databrowser/bookmark/91ae5dbe-4130-4f61-9e9c-ce09d467f910?lang=en")



