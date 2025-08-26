#remotes::install_github('zeugner/MDcountrycode'); 
#remotes::install_github('zeugner/MD3'); #bit64 #zoo
#remotes::install_github('zeugner/MDstats') #XML #rsdmx
library(MDstats)

sdmx_code <- "ESTAT/prc_hicp_manr/M.RCH_A.CP00."
infl_m_estat <- load_estat(sdmx_code)

sdmx_code <- "ESTAT/prc_hicp_aind/A.RCH_A_AVG.CP00."
infl_a_estat <- load_estat(sdmx_code)

sdmx_code <- "ESTAT/namq_10_gdp/Q.CLV_PCH_PRE.SCA.B1GQ."
gdp_q_estat <- load_estat(sdmx_code)

sdmx_code <- "ESTAT/nama_10_gdp/A.CLV_PCH_PRE.B1GQ."
gdp_a_estat <- load_estat(sdmx_code)

sdmx_code <- "ESTAT/une_rt_m/M.SA.TOTAL.PC_ACT.T."
une_m_estat <- load_estat(sdmx_code)

sdmx_code <- "ESTAT/une_rt_q/Q.SA.Y15-74.PC_ACT.T."
une_q_estat <- load_estat(sdmx_code)

sdmx_code <- "ESTAT/une_rt_a/A.Y15-74.PC_ACT.T."
une_a_estat <- load_estat(sdmx_code)

sdmx_code <- "ESTAT/tet00001/A.IVOL_EXP.TOTAL.WORLD."
expi_a_estat <- load_estat(sdmx_code)

sdmx_code <- "ESTAT/gov_10q_ggnfa/Q.PC_GDP.NSA.S13.B9."
ggdef_q_estat <- load_estat(sdmx_code)

sdmx_code <- "ESTAT/gov_10dd_edpt1/A.PC_GDP.S13.B9."
ggdef_a_estat <- load_estat(sdmx_code)

sdmx_code <- "ESTAT/gov_10q_ggdebt/Q.GD.S13.PC_GDP."
ggdeb_q_estat <- load_estat(sdmx_code)

sdmx_code <- "ESTAT/gov_10dd_edpt1/A.PC_GDP.S13.GD."
ggdeb_a_estat <- load_estat(sdmx_code)

sdmx_code <- "ESTAT/prc_hpi_q/Q.TOTAL.I15_Q."
hpi_q_estat <- load_estat(sdmx_code)

sdmx_code <- "ESTAT/prc_hpi_q/Q.TOTAL.RCH_Q."
hpc_q_estat <- load_estat(sdmx_code)

sdmx_code <- "ESTAT/prc_hpi_q/Q.TOTAL.RCH_A."
hpca_q_estat <- load_estat(sdmx_code)

sdmx_code <- "ESTAT/prc_hpi_a/A.TOTAL.I15_A_AVG."
hpi_a_estat <- load_estat(sdmx_code)

sdmx_code <- "ESTAT/prc_hpi_a/A.TOTAL.RCH_A_AVG."
hpc_a_estat <- load_estat(sdmx_code)

sdmx_code <- "ESTAT/bop_gdp6_q/Q.PC_GDP.NSA.CA.BAL.WRL_REST."
ca_q_estat <- load_estat(sdmx_code)

sdmx_code <- "ESTAT/bop_gdp6_q/A.PC_GDP.NSA.CA.BAL.WRL_REST."
ca_a_estat <- load_estat(sdmx_code)

sdmx_code <- "ESTAT/bop_gdp6_q/Q.PC_GDP.NSA.CKA.BAL.WRL_REST."
nlb_q_estat <- load_estat(sdmx_code)

sdmx_code <- "ESTAT/bop_gdp6_q/A.PC_GDP.NSA.CKA.BAL.WRL_REST."
nlb_a_estat <- load_estat(sdmx_code)

sdmx_code <- "ESTAT/bop_gdp6_q/Q.PC_GDP.NSA.FA.N_LE.WRL_REST."
niip_q_estat <- load_estat(sdmx_code)

sdmx_code <- "ESTAT/bop_gdp6_q/A.PC_GDP.NSA.FA.N_LE.WRL_REST."
niip_a_estat <- load_estat(sdmx_code)

sdmx_code <- "ECB/EXR/D.SEK.EUR.SP00.A"
indic24 <- as.data.table(mds(sdmx_code, startPeriod = Sys.Date() - 5))

sdmx_code <- "ECB/EXR/D.USD.EUR.SP00.A"
indic25 <- as.data.table(mds(sdmx_code, startPeriod = Sys.Date() - 5))

sdmx_code <- "ECB/EXR/D.PLN.EUR.SP00.A"
indic26 <- as.data.table(mds(sdmx_code, startPeriod = Sys.Date() - 5))

sdmx_code <- "ECB/EXR/D.CZK.EUR.SP00.A"
indic27 <- as.data.table(mds(sdmx_code, startPeriod = Sys.Date() - 5))

sdmx_code <- "ECB/EXR/D.HUF.EUR.SP00.A"
indic28 <- as.data.table(mds(sdmx_code, startPeriod = Sys.Date() - 5))

sdmx_code <- "ECB/EXR/D.JPY.EUR.SP00.A"
indic29 <- as.data.table(mds(sdmx_code, startPeriod = Sys.Date() - 5))

sdmx_code <- "ECB/EXR/D.CNY.EUR.SP00.A"
indic30 <- as.data.table(mds(sdmx_code, startPeriod = Sys.Date() - 5))

sdmx_code <- "ECB/EXR/D.GBP.EUR.SP00.A"
indic31 <- as.data.table(mds(sdmx_code, startPeriod = Sys.Date() - 5))

sdmx_code <- "ECB/EXR/D.DKK.EUR.SP00.A"
indic32 <- as.data.table(mds(sdmx_code, startPeriod = Sys.Date() - 5))

sdmx_code <- "ECB/EXR/D.RON.EUR.SP00.A"
indic33 <- as.data.table(mds(sdmx_code, startPeriod = Sys.Date() - 5))

raw_data_list <- list(
    "Inflation" = list(
        "Monthly year-on-year inflation" = 
            list("data" = infl_m_estat,
              "unit" = "1-year % change",
              "source" = "Eurostat",
              "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/aa1f3956-7570-4484-943d-848293a1c413?lang=en",
              "geo" = c("DE", "SE")
              ),
        "Yearly average inflation" = 
                list("data" = infl_a_estat,
                     "unit" = "Average 1-year % change",
                     "source" = "Eurostat",
                     "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/687ce2e8-9c27-4660-aad0-896b206a973e?lang=en",
                     "geo" = c("DE", "SE")
                    )
    ),
    "Economic growth" = list(
      "GDP growth quarter-on-quarter, seasonally and calendar adjusted" =
                list("data" = gdp_q_estat,
                     "unit" = "1-quarter % change",
                     "source" = "Eurostat",
                     "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/91ae5dbe-4130-4f61-9e9c-ce09d467f910?lang=en",
                     "geo" = c("SE", "DK")
                               ),
      "GDP growth year-on-year" =
                list("data" = gdp_a_estat,
                     "unit" = "1-year % change",
                     "source" = "Eurostat",
                     "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/06ebf0df-05f1-43be-80ba-ad2a53ccc467?lang=en",
                     "geo" = c("SE", "DK")
                )
      
    ),
    "Housing" = list(
              "House price index, quarterly data" =
                list("data" = hpi_q_estat,
                     "unit" = "Index (2015 = 100)",
                     "source" = "Eurostat",
                     "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/45dc8bde-dd19-4c38-b039-f54b3b3ac756?lang=en",
                     "geo" = c("SE", "DK")
                ),
              "House price quarter-on-quarter change, quarterly data" =
                list("data" = hpc_q_estat,
                     "unit" = "1-quarter % change",
                     "source" = "Eurostat",
                     "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/70a5a23b-65b7-4441-a11e-bcb90898175d?lang=en",
                     "geo" = c("SE", "DK")
                ),
              "House price year-on-year change, quarterly data" =
                list("data" = hpca_q_estat,
                     "unit" = "1-year % change",
                     "source" = "Eurostat",
                     "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/433b3d4d-66ab-48d4-9df2-5d6ae20aec57?lang=en",
                     "geo" = c("SE", "DK")
                ),
              "House price index, annual data" =
                list("data" = hpi_a_estat,
                     "unit" = "Annual average 1-year % change",
                     "source" = "Eurostat",
                     "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/9828f72e-b10e-44a4-8b97-b753298fc9a6?lang=en",
                     "geo" = c("SE", "DK")
                ),
              "Average year-on-year house price change, annual data" =
                list("data" = hpc_a_estat,
                     "unit" = "Annual average 1-year % change",
                     "source" = "Eurostat",
                     "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/9828f72e-b10e-44a4-8b97-b753298fc9a6?lang=en",
                     "geo" = c("SE", "DK")
                )
    ),
    "External sector" = list(
      "Export volume indices" =
        list("data" = expi_a_estat,
             "unit" = "Index (2021 = 100)",
             "source" = "Eurostat",
             "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/9e500c72-d144-4893-8fb7-c9e1a661bf06?lang=en",
             "geo" = c("SE", "DK")
        ),
      "Quarterly current account" =
        list("data" = ca_q_estat,
             "unit" = "% of GDP",
             "source" = "Eurostat",
             "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/75003669-fae2-4159-91d1-01e515a32f3e?lang=en",
             "geo" = c("SE", "DK")
        ),
      "Annual current account" =
        list("data" = ca_a_estat,
             "unit" = "% of GDP",
             "source" = "Eurostat",
             "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/60ebe3ec-c221-4667-a21a-842435014fd2?lang=en",
             "geo" = c("SE", "DK")
        ),
      "Quarterly net-lending borrowing (current plus capital account)" =
        list("data" = nlb_q_estat,
             "unit" = "% of GDP",
             "source" = "Eurostat",
             "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/a7d1b4d6-d971-4192-b290-d5bb996613e1?lang=en",
             "geo" = c("SE", "DK")
        ),
      "Annual net-lending borrowing (current plus capital account)" =
        list("data" = nlb_a_estat,
             "unit" = "% of GDP",
             "source" = "Eurostat",
             "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/79d46cda-841d-41a3-8bfc-a0ff830bac3e?lang=en",
             "geo" = c("SE", "DK")
        ),
      "Quarterly net international investment position" =
        list("data" = niip_q_estat,
             "unit" = "% of GDP",
             "source" = "Eurostat",
             "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/9c646860-3784-480a-a1d9-547574404130?lang=en",
             "geo" = c("SE", "DK")
        ),
      "Annual net international investment position" =
        list("data" = niip_a_estat,
             "unit" = "% of GDP",
             "source" = "Eurostat",
             "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/c1d541a1-1806-4d03-b090-6329061ad1b7?lang=en",
             "geo" = c("SE", "DK")
        )
    ),
    "Fiscal" = list(
      "Quarterly general government deficit (Net lending-borrowing)" =
        list("data" = ggdef_q_estat,
             "unit" = "% of GDP",
             "source" = "Eurostat",
             "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/3f69307d-050e-47a1-9dc2-35aa3067fada?lang=en",
             "geo" = c("SE", "DK")
        ),
      "Annual general government deficit (Net lending-borrowing)" =
        list("data" = ggdef_a_estat,
             "unit" = "% of GDP",
             "source" = "Eurostat",
             "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/7cb8900f-55ab-49c9-8605-5d311b05bf8b?lang=en",
             "geo" = c("SE", "DK")
        ),
      "Quarterly general government gross debt" =
        list("data" = ggdeb_q_estat,
             "unit" = "% of GDP",
             "source" = "Eurostat",
             "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/84e9385d-1d0d-4e45-9af8-58e1bd72bdee?lang=en",
             "geo" = c("SE", "DK")
        ),
      "Annual general government gross debt" =
        list("data" = ggdeb_a_estat,
             "unit" = "% of GDP",
             "source" = "Eurostat",
             "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/00118295-e7f4-4dbe-878b-ba352d57fc68?lang=en",
             "geo" = c("SE", "DK")
        )
    ),
    "Labour market" = list(
      "Monthly unemployment rate, seasonally adjusted" =
        list("data" = une_m_estat,
             "unit" = "% of total labour force",
             "source" = "Eurostat",
             "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/66655435-d527-4e17-bee4-856b1aaabbd6?lang=en",
             "geo" = c("SE", "DK")
        ),
      "Quarterly unemployment rate, seasonally adjusted" =
        list("data" = une_q_estat,
             "unit" = "% of labour force aged 15-74",
             "source" = "Eurostat",
             "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/618d95e1-8a21-4045-b659-d2d08175b96e?lang=en",
             "geo" = c("SE", "DK")
        ),
      "Annual unemployment rate" =
        list("data" = une_a_estat,
             "unit" = "% of labour force aged 15-74",
             "source" = "Eurostat",
             "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/2d502e6c-153a-4aac-af57-4dc623210dd8?lang=en",
             "geo" = c("SE", "DK")
        )

    )
    
)

# Create a vector with the themes
themes <- names(raw_data_list)

# Create a list of all data tables
themes_and_tables_list <- lapply(raw_data_list, function(theme) {
  lapply(theme, function(indicator) {
    indicator[["data"]]
  })
})
tables_list <- unlist(themes_and_tables_list, recursive = FALSE)
names(tables_list) <- sub(".*\\.", "", names(tables_list))

# Create a list of all links
themes_and_links_list <- lapply(raw_data_list, function(theme) {
  lapply(theme, function(indicator) {
    indicator[["link"]]
  })
})
links_list <- unlist(themes_and_links_list, recursive = FALSE)
names(links_list) <- sub(".*\\.", "", names(links_list))

# Create a list of all units
themes_and_units_list <- lapply(raw_data_list, function(theme) {
  lapply(theme, function(indicator) {
    indicator[["unit"]]
  })
})
units_list <- unlist(themes_and_units_list, recursive = FALSE)
names(units_list) <- sub(".*\\.", "", names(units_list))



# How to nest through the new structure
#themes <- names(indic_list)
#for(theme in themes) {
#  indicators <- names(indic_list[[theme]])
#  print(names(indic_list[[theme]]))
#  
#  for(indic in indicators){
#    properties <- names(indic_list[[theme]][[indic]])
#    print(properties)
#    
#    for(prop in properties) {
#      property <- indic_list[[theme]][[indic]][[prop]]
#      print(property)
#      
#    }
#    
#  }
#}

units <- list("Monthly year-on-year inflation" = "1-year % change", 
               "Yearly average inflation" = "Average 1-year % change",
               "GDP growth quarter-on-quarter, seasonally and calendar adjusted" = "1-quarter % change",
               "GDP growth year-on-year" = "1-year % change",
               "Monthly unemployment rate, seasonally adjusted" = "% of total labour force",
               "Quarterly unemployment rate, seasonally adjusted" = "% of labour force aged 15-74",
               "Annual unemployment rate" = "% of labour force aged 15-74",
               "Export volume indices" = "Index (2021 = 100)",
               "Quarterly general government deficit (Net lending-borrowing)" = "% of GDP",
               "Annual general government deficit (Net lending-borrowing)" = "% of GDP",
               "Quarterly general government gross debt" = "% of GDP",
               "Annual general government gross debt" = "% of GDP",
               "House price index, quarterly data" = "Index (2015 = 100)",
               "House price quarter-on-quarter change, quarterly data" = "1-quarter % change",
               "House price year-on-year change, quarterly data" = "1-year % change",
               "House price index, annual data" = "Annual average index (2015 = 100)",
               "Average year-on-year house price change, annual data" = "Annual average 1-year % change",
               "Quarterly current account" = "% of GDP",
               "Annual current account" = "% of GDP",
               "Quarterly net-lending borrowing (current plus capital account)" = "% of GDP",
               "Annual net-lending borrowing (current plus capital account)" = "% of GDP",
               "Quarterly net international investment position" = "% of GDP",
               "Annual net international investment position" = "% of GDP")

links <- list("Monthly year-on-year inflation" = "https://ec.europa.eu/eurostat/databrowser/bookmark/aa1f3956-7570-4484-943d-848293a1c413?lang=en", 
              "Yearly average inflation" = "https://ec.europa.eu/eurostat/databrowser/bookmark/687ce2e8-9c27-4660-aad0-896b206a973e?lang=en",
              "GDP growth quarter-on-quarter, seasonally and calendar adjusted" = "https://ec.europa.eu/eurostat/databrowser/bookmark/91ae5dbe-4130-4f61-9e9c-ce09d467f910?lang=en",
              "GDP growth year-on-year" ="https://ec.europa.eu/eurostat/databrowser/bookmark/06ebf0df-05f1-43be-80ba-ad2a53ccc467?lang=en",
              "Monthly unemployment rate, seasonally adjusted" = "https://ec.europa.eu/eurostat/databrowser/bookmark/66655435-d527-4e17-bee4-856b1aaabbd6?lang=en",
              "Quarterly unemployment rate, seasonally adjusted" = "https://ec.europa.eu/eurostat/databrowser/bookmark/618d95e1-8a21-4045-b659-d2d08175b96e?lang=en",
              "Annual unemployment rate" = "https://ec.europa.eu/eurostat/databrowser/bookmark/2d502e6c-153a-4aac-af57-4dc623210dd8?lang=en",
              "Export volume indices" = "https://ec.europa.eu/eurostat/databrowser/bookmark/9e500c72-d144-4893-8fb7-c9e1a661bf06?lang=en",
              "Quarterly general government deficit (Net lending-borrowing)" = "https://ec.europa.eu/eurostat/databrowser/bookmark/3f69307d-050e-47a1-9dc2-35aa3067fada?lang=en",
              "Annual general government deficit (Net lending-borrowing)" = "https://ec.europa.eu/eurostat/databrowser/bookmark/7cb8900f-55ab-49c9-8605-5d311b05bf8b?lang=en",
              "Quarterly general government gross debt" = "https://ec.europa.eu/eurostat/databrowser/bookmark/84e9385d-1d0d-4e45-9af8-58e1bd72bdee?lang=en",
              "Annual general government gross debt" = "https://ec.europa.eu/eurostat/databrowser/bookmark/00118295-e7f4-4dbe-878b-ba352d57fc68?lang=en",
              "House price index, quarterly data" = "https://ec.europa.eu/eurostat/databrowser/bookmark/45dc8bde-dd19-4c38-b039-f54b3b3ac756?lang=en",
              "House price quarter-on-quarter change, quarterly data" = "https://ec.europa.eu/eurostat/databrowser/bookmark/70a5a23b-65b7-4441-a11e-bcb90898175d?lang=en",
              "House price year-on-year change, quarterly data" = "https://ec.europa.eu/eurostat/databrowser/bookmark/433b3d4d-66ab-48d4-9df2-5d6ae20aec57?lang=en",
              "House price index, annual data" = "https://ec.europa.eu/eurostat/databrowser/bookmark/cc6cd7ce-27bb-4b25-b96f-689cc826eee7?lang=en",
              "Average year-on-year house price change, annual data" = "https://ec.europa.eu/eurostat/databrowser/bookmark/9828f72e-b10e-44a4-8b97-b753298fc9a6?lang=en",
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
               "GDP growth quarter-on-quarter, seasonally and calendar adjusted" = indic3,
               "GDP growth year-on-year" = indic4,
               "Monthly unemployment rate, seasonally adjusted" = indic5,
               "Quarterly unemployment rate, seasonally adjusted" = indic6,
               "Annual unemployment rate" = indic7,
               "Export volume indices" = indic8,
               "Quarterly general government deficit (Net lending-borrowing)" = indic9,
               "Annual general government deficit (Net lending-borrowing)" = indic10,
               "Quarterly general government gross debt" = indic11,
               "Annual general government gross debt" = indic12,
               "House price index, quarterly data" = indic13,
               "House price quarter-on-quarter change, quarterly data" = indic14,
               "House price year-on-year change, quarterly data" = indic15,
               "House price index, annual data" = indic16,
               "Average year-on-year house price change, annual data" = indic17,
               "Quarterly current account" = indic18,
               "Annual current account" = indic19,
               "Quarterly net-lending borrowing (current plus capital account)" = indic20,
               "Annual net-lending borrowing (current plus capital account)" = indic21,
               "Quarterly net international investment position" = indic22,
               "Annual net international investment position" = indic23)


#as.data.table(mds("WB/WDI/A.SI_POV_GAPS.SWE+USA")) # REF_AREA instead of geo
#SI_POV_GAPS
#SI_POV_GAP2
#SI_POV_NAGP

#SI_POV_DDAY
#SI_POV_2DAY
#SI_POV_NAHC


#"Exchange rates" = list(
#  
#  
#),
#"Financial markets" = list(
#  
#),
#"Poverty and inequality" = list(
#  
#),
#"Macroeconomic imbalance procedure indicators" = list(
#  
#)

