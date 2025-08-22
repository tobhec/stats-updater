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
countries_3 <- c("EU27_2020", "SE", "FR", "PL", "EL", "IS")
sdmx_code_3 <- "ESTAT/nama_10_gdp/A.CLV_PCH_PRE.B1GQ."
indic3 <- load_estat(sdmx_code_3, countries_3, start_3)


start_4 <- "2024-01"
countries_4 <- c("EU27_2020", "SE", "FR", "PL", "EL", "IS")
sdmx_code_4 <- "ESTAT/namq_10_gdp/Q.CLV_PCH_PRE.SCA.B1GQ."
indic4 <- load_estat(sdmx_code_4, countries_4, start_4)


start_5 <- "2025-05"
countries_5 <- c("EU27_2020", "SE", "FR", "PL", "EL", "IS")
sdmx_code_5 <- "ESTAT/une_rt_m/M.SA.TOTAL.PC_ACT.T."
indic5 <- load_estat(sdmx_code_5, countries_5, start_5)

start_6 <- "2024"
countries_6 <- c("EU27_2020", "SE", "FR", "PL", "EL", "IS")
sdmx_code_6 <- "ESTAT/une_rt_q/Q.SA.Y15-74.PC_ACT.T."
indic6 <- load_estat(sdmx_code_6, countries_6, start_6)

start_7 <- "2022"
countries_7 <- c("EU27_2020", "SE", "FR", "PL", "EL", "IS")
sdmx_code_7 <- "ESTAT/une_rt_a/A.Y15-74.PC_ACT.T."
indic7 <- load_estat(sdmx_code_7, countries_7, start_7)

start_8 <- "2019"
countries_8 <- c("EU27_2020", "SE", "FR", "PL", "EL", "IS")
sdmx_code_8 <- "ESTAT/tet00001/A.IVOL_EXP.TOTAL.WORLD."
indic8 <- load_estat(sdmx_code_8, countries_8, start_8)

units <- list("Monthly year-on-year inflation" = "1-year % change", 
               "Yearly average inflation" = "Average 1-year % change",
               "GDP growth year-on-year" = "1-year % change",
               "GDP growth quarter-on-quarter, seasonally and calendar adjusted" = "1-quarter % change",
               "Monthly unemployment rate, seasonally adjusted" = "% of total labour force",
               "Quarterly unemployment rate, seasonally adjusted" = "% of labour force aged 15-74",
               "Annual unemployment rate" = "% of labour force aged 15-74",
               "Export volume indices" = "Index (2021 = 100)")

links <- list("Monthly year-on-year inflation" = "https://ec.europa.eu/eurostat/databrowser/bookmark/aa1f3956-7570-4484-943d-848293a1c413?lang=en", 
              "Yearly average inflation" = "https://ec.europa.eu/eurostat/databrowser/bookmark/687ce2e8-9c27-4660-aad0-896b206a973e?lang=en",
              "GDP growth year-on-year" ="https://ec.europa.eu/eurostat/databrowser/bookmark/06ebf0df-05f1-43be-80ba-ad2a53ccc467?lang=en",
              "GDP growth quarter-on-quarter, seasonally and calendar adjusted" = "https://ec.europa.eu/eurostat/databrowser/bookmark/91ae5dbe-4130-4f61-9e9c-ce09d467f910?lang=en",
              "Monthly unemployment rate, seasonally adjusted" = "https://ec.europa.eu/eurostat/databrowser/bookmark/66655435-d527-4e17-bee4-856b1aaabbd6?lang=en",
              "Quarterly unemployment rate, seasonally adjusted" = "https://ec.europa.eu/eurostat/databrowser/bookmark/618d95e1-8a21-4045-b659-d2d08175b96e?lang=en",
              "Annual unemployment rate" = "https://ec.europa.eu/eurostat/databrowser/bookmark/2d502e6c-153a-4aac-af57-4dc623210dd8?lang=en",
              "Export volume indices" = "https://ec.europa.eu/eurostat/databrowser/bookmark/9e500c72-d144-4893-8fb7-c9e1a661bf06?lang=en")

indic1[1,4][[1]] = 5.0
indic2$test <- 2.0


indics <- list("Monthly year-on-year inflation" = indic1, 
               "Yearly average inflation" = indic2,
               "GDP growth year-on-year" = indic3,
               "GDP growth quarter-on-quarter, seasonally and calendar adjusted" = indic4,
               "Monthly unemployment rate, seasonally adjusted" = indic5,
               "Quarterly unemployment rate, seasonally adjusted" = indic6,
               "Annual unemployment rate" = indic7,
               "Export volume indices" = indic8)


