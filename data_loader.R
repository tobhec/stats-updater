#remotes::install_github('zeugner/MDcountrycode'); 
#remotes::install_github('zeugner/MD3'); #bit64 #zoo
#remotes::install_github('zeugner/MDstats') #XML #rsdmx
library(MDstats)

sdmx_code <- "ESTAT/prc_hicp_manr/M.RCH_A.CP00."
infl_m_estat <- as.data.table(mds(sdmx_code))

sdmx_code <- "ESTAT/prc_hicp_aind/A.RCH_A_AVG.CP00."
infl_a_estat <- as.data.table(mds(sdmx_code))

sdmx_code <- "ESTAT/namq_10_gdp/Q.CLV_PCH_PRE.SCA.B1GQ."
gdp_q_estat <- as.data.table(mds(sdmx_code))

sdmx_code <- "ESTAT/nama_10_gdp/A.CLV_PCH_PRE.B1GQ."
gdp_a_estat <- as.data.table(mds(sdmx_code))

sdmx_code <- "ESTAT/une_rt_m/M.SA.TOTAL.PC_ACT.T."
une_m_estat <- as.data.table(mds(sdmx_code))

sdmx_code <- "ESTAT/une_rt_q/Q.SA.Y15-74.PC_ACT.T."
une_q_estat <- as.data.table(mds(sdmx_code))

sdmx_code <- "ESTAT/une_rt_a/A.Y15-74.PC_ACT.T."
une_a_estat <- as.data.table(mds(sdmx_code))

sdmx_code <- "ESTAT/tet00001/A.IVOL_EXP.TOTAL.WORLD."
expi_a_estat <- as.data.table(mds(sdmx_code))

sdmx_code <- "ESTAT/gov_10q_ggnfa/Q.PC_GDP.NSA.S13.B9."
ggdef_q_estat <- as.data.table(mds(sdmx_code))

sdmx_code <- "ESTAT/gov_10dd_edpt1/A.PC_GDP.S13.B9."
ggdef_a_estat <- as.data.table(mds(sdmx_code))

sdmx_code <- "ESTAT/gov_10q_ggdebt/Q.GD.S13.PC_GDP."
ggdeb_q_estat <- as.data.table(mds(sdmx_code))

sdmx_code <- "ESTAT/gov_10dd_edpt1/A.PC_GDP.S13.GD."
ggdeb_a_estat <- as.data.table(mds(sdmx_code))

sdmx_code <- "ESTAT/prc_hpi_q/Q.TOTAL.I15_Q."
hpi_q_estat <- as.data.table(mds(sdmx_code))

sdmx_code <- "ESTAT/prc_hpi_q/Q.TOTAL.RCH_Q."
hpc_q_estat <- as.data.table(mds(sdmx_code))

sdmx_code <- "ESTAT/prc_hpi_q/Q.TOTAL.RCH_A."
hpca_q_estat <- as.data.table(mds(sdmx_code))

sdmx_code <- "ESTAT/prc_hpi_a/A.TOTAL.I15_A_AVG."
hpi_a_estat <- as.data.table(mds(sdmx_code))

sdmx_code <- "ESTAT/prc_hpi_a/A.TOTAL.RCH_A_AVG."
hpc_a_estat <- as.data.table(mds(sdmx_code))

sdmx_code <- "ESTAT/bop_gdp6_q/Q.PC_GDP.NSA.CA.BAL.WRL_REST."
ca_q_estat <- as.data.table(mds(sdmx_code))

sdmx_code <- "ESTAT/bop_gdp6_q/A.PC_GDP.NSA.CA.BAL.WRL_REST."
ca_a_estat <- as.data.table(mds(sdmx_code))

sdmx_code <- "ESTAT/bop_gdp6_q/Q.PC_GDP.NSA.CKA.BAL.WRL_REST."
nlb_q_estat <- as.data.table(mds(sdmx_code))

sdmx_code <- "ESTAT/bop_gdp6_q/A.PC_GDP.NSA.CKA.BAL.WRL_REST."
nlb_a_estat <- as.data.table(mds(sdmx_code))

sdmx_code <- "ESTAT/bop_gdp6_q/Q.PC_GDP.NSA.FA.N_LE.WRL_REST."
niip_q_estat <- as.data.table(mds(sdmx_code))

sdmx_code <- "ESTAT/bop_gdp6_q/A.PC_GDP.NSA.FA.N_LE.WRL_REST."
niip_a_estat <- as.data.table(mds(sdmx_code))

sdmx_code <- "ECB/EXR/D..EUR.SP00.A"
exreur_d_ecb <- as.data.table(mds(sdmx_code, startPeriod = Sys.Date() - 15))

sdmx_code <- "ECB/EXR/D..EUR.SP00.A"
gnpls_a_estat <- as.data.table(mds("ESTAT/TIPSBD10/A.PC."))

sdmx_code <- "ECB/EXR/D..EUR.SP00.A"
t1cr_a_estat <- as.data.table(mds("ESTAT/TIPSBD30/A.PC_RWA."))

sdmx_code <- "ECB/EXR/D..EUR.SP00.A"
roeb_a_estat <- as.data.table(mds("ESTAT/TIPSBD40/A.PC."))


raw_data_list <- list(
  "Exchange rates" = list(
    "exreur_d_ecb" = 
      list("title" = "Daily exchange rates in Euro",
           "data" = exreur_d_ecb,
           "unit" = "Currency per Euro",
           "source" = "European Central Bank",
           "link" = "https://data.ecb.europa.eu/main-figures/ecb-interest-rates-and-exchange-rates/exchange-rates",
           "dropdown" = "CURRENCY",
           "contains_geo" = FALSE
      )
  ),
    "Inflation" = list(
        "infl_m_estat" = 
            list("title" = "Monthly year-on-year inflation",
                 "data" = infl_m_estat,
                 "unit" = "1-year % change",
                 "source" = "Eurostat",
                 "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/aa1f3956-7570-4484-943d-848293a1c413?lang=en",
                 "geo" = c("DE", "SE"),
                 "dropdown" = "geo",
                 "contains_geo" = TRUE
                 ),
        "infl_a_estat" = 
                list("title" = "Yearly average inflation",
                     "data" = infl_a_estat,
                     "unit" = "Average 1-year % change",
                     "source" = "Eurostat",
                     "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/687ce2e8-9c27-4660-aad0-896b206a973e?lang=en",
                     "geo" = c("DE", "SE"),
                     "dropdown" = "geo",
                     "contains_geo" = TRUE
                    )
    ),
    "Economic growth" = list(
      "gdp_q_estat" =
                list("title" = "GDP growth quarter-on-quarter, seasonally and calendar adjusted",
                     "data" = gdp_q_estat,
                     "unit" = "1-quarter % change",
                     "source" = "Eurostat",
                     "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/91ae5dbe-4130-4f61-9e9c-ce09d467f910?lang=en",
                     "geo" = c("SE", "DK"),
                     "dropdown" = "geo",
                     "contains_geo" = TRUE
                               ),
      "gdp_a_estat" =
                list("title" = "GDP growth year-on-year",
                     "data" = gdp_a_estat,
                     "unit" = "1-year % change",
                     "source" = "Eurostat",
                     "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/06ebf0df-05f1-43be-80ba-ad2a53ccc467?lang=en",
                     "geo" = c("SE", "DK"),
                     "dropdown" = "geo",
                     "contains_geo" = TRUE
                )
      
    ),
    "Housing" = list(
              "hpi_q_estat" =
                list("title" = "House price index, quarterly data",
                     "data" = hpi_q_estat,
                     "unit" = "Index (2015 = 100)",
                     "source" = "Eurostat",
                     "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/45dc8bde-dd19-4c38-b039-f54b3b3ac756?lang=en",
                     "geo" = c("SE", "DK"),
                     "dropdown" = "geo",
                     "contains_geo" = TRUE
                ),
              "hpc_q_estat" =
                list("title" = "House price quarter-on-quarter change, quarterly data",
                     "data" = hpc_q_estat,
                     "unit" = "1-quarter % change",
                     "source" = "Eurostat",
                     "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/70a5a23b-65b7-4441-a11e-bcb90898175d?lang=en",
                     "geo" = c("SE", "DK"),
                     "dropdown" = "geo",
                     "contains_geo" = TRUE
                ),
              "hpca_q_estat" =
                list("title" = "House price year-on-year change, quarterly data",
                     "data" = hpca_q_estat,
                     "unit" = "1-year % change",
                     "source" = "Eurostat",
                     "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/433b3d4d-66ab-48d4-9df2-5d6ae20aec57?lang=en",
                     "geo" = c("SE", "DK"),
                     "dropdown" = "geo",
                     "contains_geo" = TRUE
                ),
              "hpi_a_estat" =
                list("title" = "House price index, annual data",
                     "data" = hpi_a_estat,
                     "unit" = "Annual average 1-year % change",
                     "source" = "Eurostat",
                     "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/9828f72e-b10e-44a4-8b97-b753298fc9a6?lang=en",
                     "geo" = c("SE", "DK"),
                     "dropdown" = "geo",
                     "contains_geo" = TRUE
                ),
              "hpc_a_estat" =
                list("title" = "Average year-on-year house price change, annual data",
                     "data" = hpc_a_estat,
                     "unit" = "Annual average 1-year % change",
                     "source" = "Eurostat",
                     "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/9828f72e-b10e-44a4-8b97-b753298fc9a6?lang=en",
                     "geo" = c("SE", "DK"),
                     "dropdown" = "geo",
                     "contains_geo" = TRUE
                )
    ),
    "External sector" = list(
      "expi_a_estat" =
        list("title" = "Export volume indices",
             "data" = expi_a_estat,
             "unit" = "Index (2021 = 100)",
             "source" = "Eurostat",
             "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/9e500c72-d144-4893-8fb7-c9e1a661bf06?lang=en",
             "geo" = c("SE", "DK"),
             "dropdown" = "geo",
             "contains_geo" = TRUE
        ),
      "ca_q_estat" =
        list("title" = "Quarterly current account",
             "data" = ca_q_estat,
             "unit" = "% of GDP",
             "source" = "Eurostat",
             "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/75003669-fae2-4159-91d1-01e515a32f3e?lang=en",
             "geo" = c("SE", "DK"),
             "dropdown" = "geo",
             "contains_geo" = TRUE
        ),
      "ca_a_estat" =
        list("title" = "Annual current account",
             "data" = ca_a_estat,
             "unit" = "% of GDP",
             "source" = "Eurostat",
             "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/60ebe3ec-c221-4667-a21a-842435014fd2?lang=en",
             "geo" = c("SE", "DK"),
             "dropdown" = "geo",
             "contains_geo" = TRUE
        ),
      "nlb_q_estat" =
        list("title" = "Quarterly net-lending borrowing (current plus capital account)",
             "data" = nlb_q_estat,
             "unit" = "% of GDP",
             "source" = "Eurostat",
             "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/a7d1b4d6-d971-4192-b290-d5bb996613e1?lang=en",
             "geo" = c("SE", "DK"),
             "dropdown" = "geo",
             "contains_geo" = TRUE
        ),
      "nlb_a_estat" =
        list("title" = "Annual net-lending borrowing (current plus capital account)",
             "data" = nlb_a_estat,
             "unit" = "% of GDP",
             "source" = "Eurostat",
             "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/79d46cda-841d-41a3-8bfc-a0ff830bac3e?lang=en",
             "geo" = c("SE", "DK"),
             "dropdown" = "geo",
             "contains_geo" = TRUE
        ),
      "niip_q_estat" =
        list("title" = "Quarterly net international investment position",
             "data" = niip_q_estat,
             "unit" = "% of GDP",
             "source" = "Eurostat",
             "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/9c646860-3784-480a-a1d9-547574404130?lang=en",
             "geo" = c("SE", "DK"),
             "dropdown" = "geo",
             "contains_geo" = TRUE
        ),
      "niip_a_estat" =
        list("title" = "Annual net international investment position",
             "data" = niip_a_estat,
             "unit" = "% of GDP",
             "source" = "Eurostat",
             "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/c1d541a1-1806-4d03-b090-6329061ad1b7?lang=en",
             "geo" = c("SE", "DK"),
             "dropdown" = "geo",
             "contains_geo" = TRUE
        )
    ),
    "Fiscal" = list(
      "ggdef_q_estat" =
        list("title" = "Quarterly general government deficit (Net lending-borrowing)",
             "data" = ggdef_q_estat,
             "unit" = "% of GDP",
             "source" = "Eurostat",
             "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/3f69307d-050e-47a1-9dc2-35aa3067fada?lang=en",
             "geo" = c("SE", "DK"),
             "dropdown" = "geo",
             "contains_geo" = TRUE
        ),
      "ggdef_a_estat" =
        list("title" = "Annual general government deficit (Net lending-borrowing)",
             "data" = ggdef_a_estat,
             "unit" = "% of GDP",
             "source" = "Eurostat",
             "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/7cb8900f-55ab-49c9-8605-5d311b05bf8b?lang=en",
             "geo" = c("SE", "DK"),
             "dropdown" = "geo",
             "contains_geo" = TRUE
        ),
      "ggdeb_q_estat" =
        list("title" = "Quarterly general government gross debt",
             "data" = ggdeb_q_estat,
             "unit" = "% of GDP",
             "source" = "Eurostat",
             "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/84e9385d-1d0d-4e45-9af8-58e1bd72bdee?lang=en",
             "geo" = c("SE", "DK"),
             "dropdown" = "geo",
             "contains_geo" = TRUE
        ),
      "ggdeb_a_estat" =
        list("title" = "Annual general government gross debt",
             "data" = ggdeb_a_estat,
             "unit" = "% of GDP",
             "source" = "Eurostat",
             "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/00118295-e7f4-4dbe-878b-ba352d57fc68?lang=en",
             "geo" = c("SE", "DK"),
             "dropdown" = "geo",
             "contains_geo" = TRUE
        )
    ),
    "Labour market" = list(
      "une_m_estat" =
        list("title" = "Monthly unemployment rate, seasonally adjusted",
             "data" = une_m_estat,
             "unit" = "% of total labour force",
             "source" = "Eurostat",
             "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/66655435-d527-4e17-bee4-856b1aaabbd6?lang=en",
             "geo" = c("SE", "DK"),
             "dropdown" = "geo",
             "contains_geo" = TRUE
        ),
      "une_q_estat" =
        list("title" = "Quarterly unemployment rate, seasonally adjusted",
             "data" = une_q_estat,
             "unit" = "% of labour force aged 15-74",
             "source" = "Eurostat",
             "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/618d95e1-8a21-4045-b659-d2d08175b96e?lang=en",
             "geo" = c("SE", "DK"),
             "dropdown" = "geo",
             "contains_geo" = TRUE
        ),
      "une_a_estat" =
        list("title" = "Annual unemployment rate",
             "data" = une_a_estat,
             "unit" = "% of labour force aged 15-74",
             "source" = "Eurostat",
             "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/2d502e6c-153a-4aac-af57-4dc623210dd8?lang=en",
             "geo" = c("SE", "DK"),
             "dropdown" = "geo",
             "contains_geo" = TRUE
        )

    ),
  "MIP Auxiliary indicators" = list(
    "gnpls_a_estat" =
      list("title" = "Gross non-performing loans, domestic and foreign entities",
           "data" = gnpls_a_estat,
           "unit" = "% of gross loans",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/032a1933-cf5f-4007-bedf-4febd4c495f6?lang=en&createdAt=2025-09-14T09:47:13Z",
           "geo" = c("SE", "DK"),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "t1cr_a_estat" =
      list("title" = "Gross non-performing loans, domestic and foreign entities",
           "data" = t1cr_a_estat,
           "unit" = "% of risk-weighted assets",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/4bf52ccb-7ee2-4ae2-a682-ae3ae4e23370?lang=en&createdAt=2025-09-14T09:48:47Z",
           "geo" = c("SE", "DK"),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "roeb_a_estat" =
      list("title" = "Gross non-performing loans, domestic and foreign entities",
           "data" = roeb_a_estat,
           "unit" = "%",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/d721d559-eafc-4acf-96e8-ba6400fd10b2?lang=en&createdAt=2025-09-14T09:48:59Z",
           "geo" = c("SE", "DK"),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      )

    
  )
    
)

# Create a vector with the themes
themes <- names(raw_data_list)

# Create a list of all titles
themes_and_titles_list <- lapply(raw_data_list, function(theme) {
  lapply(theme, function(indicator) {
    indicator[["title"]]
  })
})
titles_list <- unlist(themes_and_titles_list, recursive = FALSE)
names(titles_list) <- sub(".*\\.", "", names(titles_list))

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

# Create a list of all units
themes_and_sources_list <- lapply(raw_data_list, function(theme) {
  lapply(theme, function(indicator) {
    indicator[["source"]]
  })
})
sources_list <- unlist(themes_and_sources_list, recursive = FALSE)
names(sources_list) <- sub(".*\\.", "", names(sources_list))

# Create a list of all units
themes_and_con_geos_list <- lapply(raw_data_list, function(theme) {
  lapply(theme, function(indicator) {
    indicator[["contains_geo"]]
  })
})
con_geos_list <- unlist(themes_and_con_geos_list, recursive = FALSE)
names(con_geos_list) <- sub(".*\\.", "", names(con_geos_list))

# Create a list of which dropdown the indicators have
themes_and_dropdowns_list <- lapply(raw_data_list, function(theme) {
  lapply(theme, function(indicator) {
    indicator[["dropdown"]]
  })
})
dropdowns_list <- unlist(themes_and_dropdowns_list, recursive = FALSE)
names(dropdowns_list) <- sub(".*\\.", "", names(dropdowns_list))



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


#indic1[1,4][[1]] = 5.0
#indic2$test <- 2.0



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

