#remotes::install_github('zeugner/MDcountrycode'); 
#remotes::install_github('zeugner/MD3'); #bit64 #zoo
#remotes::install_github('zeugner/MDstats') #XML #rsdmx
library(MDstats)

#start_1 <- "2025-04"
#countries_1 <- c("SE", "FR")
sdmx_code_1 <- "ESTAT/prc_hicp_manr/M.RCH_A.CP00."
indic1 <- load_estat(sdmx_code_1)

#start_2 <- "2023"
#countries_2 <- c("SE", "FR")
sdmx_code_2 <- "ESTAT/prc_hicp_aind/A.RCH_A_AVG.CP00."
indic2 <- load_estat(sdmx_code_2)

#start_3 <- "2020"
#countries_3 <- c("EU27_2020", "SE", "FR", "PL", "EL", "IS")
sdmx_code_3 <- "ESTAT/nama_10_gdp/A.CLV_PCH_PRE.B1GQ."
indic3 <- load_estat(sdmx_code_3)

#start_4 <- "2024-01"
#countries_4 <- c("EU27_2020", "SE", "FR", "PL", "EL", "IS")
sdmx_code_4 <- "ESTAT/namq_10_gdp/Q.CLV_PCH_PRE.SCA.B1GQ."
indic4 <- load_estat(sdmx_code_4)

#start_5 <- "2025-05"
#countries_5 <- c("EU27_2020", "SE", "FR", "PL", "EL", "IS")
sdmx_code_5 <- "ESTAT/une_rt_m/M.SA.TOTAL.PC_ACT.T."
indic5 <- load_estat(sdmx_code_5)

#start_6 <- "2024"
countries_6 <- c("EU27_2020", "SE", "FR", "PL", "EL", "IS")
sdmx_code_6 <- "ESTAT/une_rt_q/Q.SA.Y15-74.PC_ACT.T."
indic6 <- load_estat(sdmx_code_6)

#start_7 <- "2022"
#countries_7 <- c("EU27_2020", "SE", "FR", "PL", "EL", "IS")
sdmx_code_7 <- "ESTAT/une_rt_a/A.Y15-74.PC_ACT.T."
indic7 <- load_estat(sdmx_code_7)

#start_8 <- "2019"
#countries_8 <- c("EU27_2020", "SE", "FR", "PL", "EL", "IS")
sdmx_code_8 <- "ESTAT/tet00001/A.IVOL_EXP.TOTAL.WORLD."
indic8 <- load_estat(sdmx_code_8)

#start_9 <- "2024"
#countries_9 <- c("EU27_2020", "SE", "FR", "PL", "EL")
sdmx_code_9 <- "ESTAT/gov_10q_ggnfa/Q.PC_GDP.NSA.S13.B9."
indic9 <- load_estat(sdmx_code_9)

#start_10 <- "2019"
#countries_10 <- c("EU27_2020", "SE", "FR", "PL", "EL")
sdmx_code_10 <- "ESTAT/gov_10dd_edpt1/A.PC_GDP.S13.B9."
indic10 <- load_estat(sdmx_code_10)

#start_11 <- "2024"
#countries_11 <- c("EU27_2020", "SE", "FR", "PL", "EL")
sdmx_code_11 <- "ESTAT/gov_10q_ggdebt/Q.GD.S13.PC_GDP."
indic11 <- load_estat(sdmx_code_11)

#start_12 <- "2019"
countries_12 <- c("EU27_2020", "SE", "FR", "PL", "EL")
sdmx_code_12 <- "ESTAT/gov_10dd_edpt1/A.PC_GDP.S13.GD."
indic12 <- load_estat(sdmx_code_12)

#start_13 <- "2024"
#countries_13 <- c("EU27_2020", "SE", "FR", "PL")
sdmx_code_13 <- "ESTAT/prc_hpi_q/Q.TOTAL.I15_Q."
indic13 <- load_estat(sdmx_code_13)

#start_14 <- "2024"
#countries_14 <- c("EU27_2020", "SE", "FR", "PL")
sdmx_code_14 <- "ESTAT/prc_hpi_q/Q.TOTAL.RCH_Q."
indic14 <- load_estat(sdmx_code_14)

#start_15 <- "2024"
#countries_15 <- c("EU27_2020", "SE", "FR", "PL")
sdmx_code_15 <- "ESTAT/prc_hpi_q/Q.TOTAL.RCH_A."
indic15 <- load_estat(sdmx_code_15)

#start_16 <- "2019"
#countries_16 <- c("EU27_2020", "SE", "FR", "PL")
sdmx_code_16 <- "ESTAT/prc_hpi_a/A.TOTAL.I15_A_AVG."
indic16 <- load_estat(sdmx_code_16)

#start_17 <- "2019"
#countries_17 <- c("EU27_2020", "SE", "FR", "PL")
sdmx_code_17 <- "ESTAT/prc_hpi_a/A.TOTAL.RCH_A_AVG."
indic17 <- load_estat(sdmx_code_17)

#start_18 <- "2024"
#countries_18 <- c("SE", "FR", "PL")
sdmx_code_18 <- "ESTAT/bop_gdp6_q/Q.PC_GDP.NSA.CA.BAL.WRL_REST."
indic18 <- load_estat(sdmx_code_18)

#start_19 <- "2020"
#countries_19 <- c("SE", "FR", "PL")
sdmx_code_19 <- "ESTAT/bop_gdp6_q/A.PC_GDP.NSA.CA.BAL.WRL_REST."
indic19 <- load_estat(sdmx_code_19)

#start_20 <- "2024"
#countries_20 <- c("SE", "FR", "PL")
sdmx_code_20 <- "ESTAT/bop_gdp6_q/Q.PC_GDP.NSA.CKA.BAL.WRL_REST."
indic20 <- load_estat(sdmx_code_20)

#start_21 <- "2020"
#countries_21 <- c("SE", "FR", "PL")
sdmx_code_21 <- "ESTAT/bop_gdp6_q/A.PC_GDP.NSA.CKA.BAL.WRL_REST."
indic21 <- load_estat(sdmx_code_21)

#start_22 <- "2024"
#countries_22 <- c("SE", "FR", "PL")
sdmx_code_22 <- "ESTAT/bop_gdp6_q/Q.PC_GDP.NSA.FA.N_LE.WRL_REST."
indic22 <- load_estat(sdmx_code_22)

#start_23 <- "2020"
#countries_23 <- c("SE", "FR", "PL")
sdmx_code_23 <- "ESTAT/bop_gdp6_q/A.PC_GDP.NSA.FA.N_LE.WRL_REST."
indic23 <- load_estat(sdmx_code_23)


units <- list("Monthly year-on-year inflation" = "1-year % change", 
               "Yearly average inflation" = "Average 1-year % change",
               "GDP growth year-on-year" = "1-year % change",
               "GDP growth quarter-on-quarter, seasonally and calendar adjusted" = "1-quarter % change",
               "Monthly unemployment rate, seasonally adjusted" = "% of total labour force",
               "Quarterly unemployment rate, seasonally adjusted" = "% of labour force aged 15-74",
               "Annual unemployment rate" = "% of labour force aged 15-74",
               "Export volume indices" = "Index (2021 = 100)",
               "Quarterly general government deficit (Net lending-borrowing)" = "% of GDP",
               "Annual general government deficit (Net lending-borrowing)" = "% of GDP",
               "Quarterly general government gross debt" = "% of GDP",
               "Annual general government gross debt" = "% of GDP",
               "Quarterly house price index" = "Index (2015 = 100)",
               "Quarterly house price change, quarter-on-quarter" = "1-quarter % change",
               "Quarterly house price change, year-on-year" = "1-year % change",
               "Annual house price index" = "Annual average index (2015 = 100)",
               "Annual house price change" = "Annual average 1-year % change",
               "Quarterly current account" = "% of GDP",
               "Annual current account" = "% of GDP",
               "Quarterly net-lending borrowing (current plus capital account)" = "% of GDP",
               "Annual net-lending borrowing (current plus capital account)" = "% of GDP",
               "Quarterly net international investment position" = "% of GDP",
               "Annual net international investment position" = "% of GDP")

links <- list("Monthly year-on-year inflation" = "https://ec.europa.eu/eurostat/databrowser/bookmark/aa1f3956-7570-4484-943d-848293a1c413?lang=en", 
              "Yearly average inflation" = "https://ec.europa.eu/eurostat/databrowser/bookmark/687ce2e8-9c27-4660-aad0-896b206a973e?lang=en",
              "GDP growth year-on-year" ="https://ec.europa.eu/eurostat/databrowser/bookmark/06ebf0df-05f1-43be-80ba-ad2a53ccc467?lang=en",
              "GDP growth quarter-on-quarter, seasonally and calendar adjusted" = "https://ec.europa.eu/eurostat/databrowser/bookmark/91ae5dbe-4130-4f61-9e9c-ce09d467f910?lang=en",
              "Monthly unemployment rate, seasonally adjusted" = "https://ec.europa.eu/eurostat/databrowser/bookmark/66655435-d527-4e17-bee4-856b1aaabbd6?lang=en",
              "Quarterly unemployment rate, seasonally adjusted" = "https://ec.europa.eu/eurostat/databrowser/bookmark/618d95e1-8a21-4045-b659-d2d08175b96e?lang=en",
              "Annual unemployment rate" = "https://ec.europa.eu/eurostat/databrowser/bookmark/2d502e6c-153a-4aac-af57-4dc623210dd8?lang=en",
              "Export volume indices" = "https://ec.europa.eu/eurostat/databrowser/bookmark/9e500c72-d144-4893-8fb7-c9e1a661bf06?lang=en",
              "Quarterly general government deficit (Net lending-borrowing)" = "https://ec.europa.eu/eurostat/databrowser/bookmark/3f69307d-050e-47a1-9dc2-35aa3067fada?lang=en",
              "Annual general government deficit (Net lending-borrowing)" = "https://ec.europa.eu/eurostat/databrowser/bookmark/7cb8900f-55ab-49c9-8605-5d311b05bf8b?lang=en",
              "Quarterly general government gross debt" = "https://ec.europa.eu/eurostat/databrowser/bookmark/84e9385d-1d0d-4e45-9af8-58e1bd72bdee?lang=en",
              "Annual general government gross debt" = "https://ec.europa.eu/eurostat/databrowser/bookmark/00118295-e7f4-4dbe-878b-ba352d57fc68?lang=en",                "Quarterly house prices" = "Index (2015 = 100)",
              "Quarterly house price index" = "https://ec.europa.eu/eurostat/databrowser/bookmark/45dc8bde-dd19-4c38-b039-f54b3b3ac756?lang=en",
              "Quarterly house price change, quarter-on-quarter" = "https://ec.europa.eu/eurostat/databrowser/bookmark/70a5a23b-65b7-4441-a11e-bcb90898175d?lang=en",
              "Quarterly house price change, year-on-year" = "https://ec.europa.eu/eurostat/databrowser/bookmark/433b3d4d-66ab-48d4-9df2-5d6ae20aec57?lang=en",
              "Annual house price index" = "https://ec.europa.eu/eurostat/databrowser/bookmark/cc6cd7ce-27bb-4b25-b96f-689cc826eee7?lang=en",
              "Annual house price change" = "https://ec.europa.eu/eurostat/databrowser/bookmark/9828f72e-b10e-44a4-8b97-b753298fc9a6?lang=en",
              "Quarterly current account" = "https://ec.europa.eu/eurostat/databrowser/bookmark/75003669-fae2-4159-91d1-01e515a32f3e?lang=en",
              "Annual current account" = "https://ec.europa.eu/eurostat/databrowser/bookmark/60ebe3ec-c221-4667-a21a-842435014fd2?lang=en",
              "Quarterly net-lending borrowing (current plus capital account)" = "https://ec.europa.eu/eurostat/databrowser/bookmark/a7d1b4d6-d971-4192-b290-d5bb996613e1?lang=en",
              "Annual net-lending borrowing (current plus capital account)" = "https://ec.europa.eu/eurostat/databrowser/bookmark/79d46cda-841d-41a3-8bfc-a0ff830bac3e?lang=en",
              "Quarterly net international investment position" = "https://ec.europa.eu/eurostat/databrowser/bookmark/9c646860-3784-480a-a1d9-547574404130?lang=en",
              "Annual net international investment position" = "https://ec.europa.eu/eurostat/databrowser/bookmark/c1d541a1-1806-4d03-b090-6329061ad1b7?lang=en")

#indic1[1,4][[1]] = 5.0
#indic2$test <- 2.0


indics <- list("Monthly year-on-year inflation" = indic1, 
               "Yearly average inflation" = indic2,
               "GDP growth year-on-year" = indic3,
               "GDP growth quarter-on-quarter, seasonally and calendar adjusted" = indic4,
               "Monthly unemployment rate, seasonally adjusted" = indic5,
               "Quarterly unemployment rate, seasonally adjusted" = indic6,
               "Annual unemployment rate" = indic7,
               "Export volume indices" = indic8,
               "Quarterly general government deficit (Net lending-borrowing)" = indic9,
               "Annual general government deficit (Net lending-borrowing)" = indic10,
               "Quarterly general government gross debt" = indic11,
               "Annual general government gross debt" = indic12,
               "Quarterly house price index" = indic13,
               "Quarterly house price change, quarter-on-quarter" = indic14,
               "Quarterly house price change, year-on-year" = indic15,
               "Annual house price index" = indic16,
               "Annual house price change" = indic17,
               "Quarterly current account" = indic18,
               "Annual current account" = indic19,
               "Quarterly net-lending borrowing (current plus capital account)" = indic20,
               "Annual net-lending borrowing (current plus capital account)" = indic21,
               "Quarterly net international investment position" = indic22,
               "Annual net international investment position" = indic23)



