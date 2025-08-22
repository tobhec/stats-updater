#remotes::install_github('zeugner/MDcountrycode'); 
#remotes::install_github('zeugner/MD3'); #bit64 #zoo
#remotes::install_github('zeugner/MDstats') #XML #rsdmx
library(MDstats)



#years <- c("2025", "2024", "2023", "2022", "2021", "2020", 
#           "2019", "2018", "2017", "2016", "2015", "2014", 
#           "2013", "2012", "2011", "2010")

#indicators <- list("Monthly year-on-year inflation" = "ESTAT/prc_hicp_manr/M.RCH_A.CP00.",
#                "Yearly average inflation" = "ESTAT/prc_hicp_aind/A.RCH_A_AVG.CP00.")


start_1 <- "2025-04"
countries_1 <- c("SE", "FR")
sdmx_code_1 <- "ESTAT/prc_hicp_manr/M.RCH_A.CP00."
indic1 <- load_estat(sdmx_code_1, countries_1, start_1)

start_2 <- "2023"
countries_2 <- c("SE", "FR")
sdmx_code_2 <- "ESTAT/prc_hicp_aind/A.RCH_A_AVG.CP00."
indic2 <- load_estat(sdmx_code_2, countries_2, start_2)

start_3 <- "2020"
countries_3 <- c("EU27_2020", "SE", "FR", "IS")
sdmx_code_3 <- "ESTAT/nama_10_gdp/A.CLV_PCH_PRE.B1GQ."
indic3 <- load_estat(sdmx_code_3, countries_3, start_3)


start_4 <- "2024-01"
countries_4 <- c("EU27_2020", "SE", "FR", "IS")
sdmx_code_4 <- "ESTAT/namq_10_gdp/Q.CLV_PCH_PRE.SCA.B1GQ."
indic4 <- load_estat(sdmx_code_4, countries_4, start_4)


start_5 <- "2025-05"
countries_5 <- c("EU27_2020", "SE", "FR", "IS")
sdmx_code_5 <- "ESTAT/une_rt_m/M.SA.TOTAL.PC_ACT.T."
indic5 <- load_estat(sdmx_code_5, countries_5, start_5)


indics <- list("Monthly year-on-year inflation" = indic1, 
               "Yearly average inflation" = indic2,
               "GDP growth year-on-year" = indic3,
               "GDP growth quarter-on-quarter, seasonally and calendar adjusted" = indic4,
               "Monthly unemployment rate, seasonally adjusted" = indic5)

links <- list("Monthly year-on-year inflation" = "https://ec.europa.eu/eurostat/databrowser/bookmark/aa1f3956-7570-4484-943d-848293a1c413?lang=en", 
              "Yearly average inflation" = "https://ec.europa.eu/eurostat/databrowser/bookmark/687ce2e8-9c27-4660-aad0-896b206a973e?lang=en",
              "GDP growth year-on-year" ="https://ec.europa.eu/eurostat/databrowser/bookmark/06ebf0df-05f1-43be-80ba-ad2a53ccc467?lang=en",
              "GDP growth quarter-on-quarter, seasonally and calendar adjusted" = "https://ec.europa.eu/eurostat/databrowser/bookmark/91ae5dbe-4130-4f61-9e9c-ce09d467f910?lang=en",
              "Monthly unemployment rate, seasonally adjusted" = "https://ec.europa.eu/eurostat/databrowser/bookmark/66655435-d527-4e17-bee4-856b1aaabbd6?lang=en")




