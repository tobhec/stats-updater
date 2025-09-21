#remotes::install_github('zeugner/MDcountrycode'); 
#remotes::install_github('zeugner/MD3'); #bit64 #zoo
#remotes::install_github('zeugner/MDstats') #XML #rsdmx
library(MDstats)

### Eurostat ###

# Monthly year-on-year inflation
sdmx_code <- "ESTAT/prc_hicp_manr/M.RCH_A.CP00."
infl_m_estat <- as.data.table(mds(sdmx_code))

# Yearly average inflation
sdmx_code <- "ESTAT/prc_hicp_aind/A.RCH_A_AVG.CP00."
infl_a_estat <- as.data.table(mds(sdmx_code))

# GDP growth quarter-on-quarter, seasonally and calendar adjusted
sdmx_code <- "ESTAT/namq_10_gdp/Q.CLV_PCH_PRE.SCA.B1GQ."
gdp_q_estat <- as.data.table(mds(sdmx_code))

# GDP growth year-on-year
sdmx_code <- "ESTAT/nama_10_gdp/A.CLV_PCH_PRE.B1GQ."
gdp_a_estat <- as.data.table(mds(sdmx_code))

# Monthly unemployment rate, seasonally adjusted
sdmx_code <- "ESTAT/une_rt_m/M.SA.TOTAL.PC_ACT.T."
une_m_estat <- as.data.table(mds(sdmx_code))

# Quarterly unemployment rate, seasonally adjusted
sdmx_code <- "ESTAT/une_rt_q/Q.SA.Y15-74.PC_ACT.T."
une_q_estat <- as.data.table(mds(sdmx_code))

# Annual unemployment rate
sdmx_code <- "ESTAT/une_rt_a/A.Y15-74.PC_ACT.T."
une_a_estat <- as.data.table(mds(sdmx_code))

# Export volume indices
sdmx_code <- "ESTAT/tet00001/A.IVOL_EXP.TOTAL.WORLD."
expi_a_estat <- as.data.table(mds(sdmx_code))

# Quarterly general government deficit
sdmx_code <- "ESTAT/gov_10q_ggnfa/Q.PC_GDP.NSA.S13.B9."
ggdef_q_estat <- as.data.table(mds(sdmx_code))

# Annual general government deficit
sdmx_code <- "ESTAT/gov_10dd_edpt1/A.PC_GDP.S13.B9."
ggdef_a_estat <- as.data.table(mds(sdmx_code))

# Quarterly general government debt
sdmx_code <- "ESTAT/gov_10q_ggdebt/Q.GD.S13.PC_GDP."
ggdeb_q_estat <- as.data.table(mds(sdmx_code))

# Annual general government debt
sdmx_code <- "ESTAT/gov_10dd_edpt1/A.PC_GDP.S13.GD."
ggdeb_a_estat <- as.data.table(mds(sdmx_code))

# House price index, quarterly data
sdmx_code <- "ESTAT/prc_hpi_q/Q.TOTAL.I15_Q."
hpi_q_estat <- as.data.table(mds(sdmx_code))

# House price quarter-on-quarter change, quarterly data
sdmx_code <- "ESTAT/prc_hpi_q/Q.TOTAL.RCH_Q."
hpc_q_estat <- as.data.table(mds(sdmx_code))

# House price year-on-year change, quarterly data
sdmx_code <- "ESTAT/prc_hpi_q/Q.TOTAL.RCH_A."
hpca_q_estat <- as.data.table(mds(sdmx_code))

# House price index, annual data
sdmx_code <- "ESTAT/prc_hpi_a/A.TOTAL.I15_A_AVG."
hpi_a_estat <- as.data.table(mds(sdmx_code))

# Average year-on-year house price change, annual data
sdmx_code <- "ESTAT/prc_hpi_a/A.TOTAL.RCH_A_AVG."
hpc_a_estat <- as.data.table(mds(sdmx_code))

# Quarterly current account
sdmx_code <- "ESTAT/bop_gdp6_q/Q.PC_GDP.NSA.CA.BAL.WRL_REST."
ca_q_estat <- as.data.table(mds(sdmx_code))

# Annual current account
sdmx_code <- "ESTAT/bop_gdp6_q/A.PC_GDP.NSA.CA.BAL.WRL_REST."
ca_a_estat <- as.data.table(mds(sdmx_code))

# Quarterly net lending-borrowing (CA+KA)
sdmx_code <- "ESTAT/bop_gdp6_q/Q.PC_GDP.NSA.CKA.BAL.WRL_REST."
nlb_q_estat <- as.data.table(mds(sdmx_code))

# Annual net lending-borrowing (CA+KA)
sdmx_code <- "ESTAT/bop_gdp6_q/A.PC_GDP.NSA.CKA.BAL.WRL_REST."
nlb_a_estat <- as.data.table(mds(sdmx_code))

# Quarterly net international investment position
sdmx_code <- "ESTAT/bop_gdp6_q/Q.PC_GDP.NSA.FA.N_LE.WRL_REST."
niip_q_estat <- as.data.table(mds(sdmx_code))

# Annual net international investment position
sdmx_code <- "ESTAT/bop_gdp6_q/A.PC_GDP.NSA.FA.N_LE.WRL_REST."
niip_a_estat <- as.data.table(mds(sdmx_code))

# Daily exchange rates in Euro
#sdmx_code <- "ESTAT/ert_bil_eur_d/D.AVG.NAC.ALL"
#exr_d_estat <- as.data.table(mds(sdmx_code))

# Monthly real effective exchange rate
sdmx_code <- "ESTAT/ert_eff_ic_m/M.REER_IC42_CPI.I15."
reer_m_estat <- as.data.table(mds(sdmx_code))

# Quarterly real effective exchange rate
sdmx_code <- "ESTAT/ert_eff_ic_q/Q.REER_IC42_CPI.I15."
reer_q_estat <- as.data.table(mds(sdmx_code))

# Annual real effective exchange rate
sdmx_code <- "ESTAT/ert_eff_ic_a/A.REER_IC42_CPI.I15."
reer_a_estat <- as.data.table(mds(sdmx_code))

# Government bond yields - 10 year maturity, monthly data
sdmx_code <- "ESTAT/irt_lt_gby10_m/M.Y10."
gby_m_estat <- as.data.table(mds(sdmx_code))

# Government bond yields - 10 year maturity, annual data
sdmx_code <- "ESTAT/irt_lt_gby10_a/A.Y10."
gby_a_estat <- as.data.table(mds(sdmx_code))

# Government bond yields (EMU convergence data) - 10 year maturity, monthly data
sdmx_code <- "ESTAT/irt_lt_mcby_m/M.MCBY."
gbyemu_m_estat <- as.data.table(mds(sdmx_code))

# Government bond yields (EMU convergence data) - 10 year maturity, quarterly data
sdmx_code <- "ESTAT/irt_lt_mcby_q/Q.MCBY."
gbyemu_q_estat <- as.data.table(mds(sdmx_code))

# Government bond yields (EMU convergence data) - 10 year maturity, annual data
sdmx_code <- "ESTAT/irt_lt_mcby_a/A.MCBY."
gbyemu_a_estat <- as.data.table(mds(sdmx_code))

# Money market interest rates (3-month rate), monthly data
sdmx_code <- "ESTAT/irt_st_m/M.IRT_M3."
mmir_m_estat <- as.data.table(mds(sdmx_code))

# Money market interest rates (3-month rate), quarterly data
sdmx_code <- "ESTAT/irt_st_q/Q.IRT_M3."
mmir_q_estat <- as.data.table(mds(sdmx_code))

# Money market interest rates (3-month rate), annual data
sdmx_code <- "ESTAT/irt_st_a/A.IRT_M3."
mmir_a_estat <- as.data.table(mds(sdmx_code))

# Gross non-performing loans
sdmx_code <- "ESTAT/TIPSBD10/A.PC."
gnpls_a_estat <- as.data.table(mds(sdmx_code))

# Tier-1 capital ratio
sdmx_code <- "ESTAT/TIPSBD30/A.PC_RWA."
t1cr_a_estat <- as.data.table(mds(sdmx_code))

# Return on equity of banks
sdmx_code <- "ESTAT/TIPSBD40/A.PC."
roeb_a_estat <- as.data.table(mds(sdmx_code))

### European Central Bank ###

# Daily exchange rates in Euro
sdmx_code <- "ECB/EXR/D..EUR.SP00.A"
exreur_d_ecb <- as.data.table(mds(sdmx_code, startPeriod = Sys.Date() - 15))

# Gross non-performing loans
sdmx_code <- "ECB/CBD2/A..W0.67._Z._Z.A.F.I3632._Z._Z._Z._Z._Z._Z.PC"
gnpls_a_ecb <- as.data.table(mds(sdmx_code))
setnames(gnpls_a_ecb, "REF_AREA", "geo")

# Tier-1 capital ratio
sdmx_code <- "ECB/CBD2/A..W0.67._Z._Z.A.A.I4002._Z._Z._Z._Z._Z._Z.PC"
t1cr_a_ecb <- as.data.table(mds(sdmx_code))
setnames(t1cr_a_ecb, "REF_AREA", "geo")

# Return on equity of banks
sdmx_code <- "ECB/CBD2/A..W0.67._Z._Z.A.A.I2003._Z._Z._Z._Z._Z._Z.PC"
roeb_a_ecb <- as.data.table(mds(sdmx_code))
setnames(roeb_a_ecb, "REF_AREA", "geo")

# Consolidated banking leverage
sdmx_code <- "ECB/CBD2/A..W0.67._Z._Z.A.A.I3400._Z._Z._Z._Z._Z._Z.PN"
cbl_a_ecb <- as.data.table(mds(sdmx_code))
setnames(cbl_a_ecb, "REF_AREA", "geo")

### International Monetary Fund ###

# Annual inflation https://www.imf.org/external/datamapper/PCPIPCH@WEO/OEMDC/ADVEC/WEOWORLD
sdmx_code <- "IMFWEO/WEO/.PCPIPCH"
infl_a_imf <- as.data.table(mds(sdmx_code))
setnames(infl_a_imf, "COUNTRY", "geo")

# 
sdmx_code <- "IMFWEO/WEO/.TM_RPCH"
imgs_a_imf <- as.data.table(mds(sdmx_code)) # IMPORT VOLUME GS
setnames(imgs_a_imf, "COUNTRY", "geo")

sdmx_code <- "IMFWEO/WEO/.TMG_RPCH"
img_a_imf <- as.data.table(mds(sdmx_code)) # im VOLUME G
setnames(img_a_imf, "COUNTRY", "geo")

sdmx_code <- "IMFWEO/WEO/.TX_RPCH"
exgs_a_imf <- as.data.table(mds(sdmx_code)) #  ex VOLUME GS
setnames(exgs_a_imf, "COUNTRY", "geo")

sdmx_code <- "IMFWEO/WEO/.TXG_RPCH"
exg_a_imf <- as.data.table(mds(sdmx_code)) #  EXPORT VOLUME G
setnames(exg_a_imf, "COUNTRY", "geo")

sdmx_code <- "IMFWEO/WEO/.GGR_NGDP"
ggr_a_imf <- as.data.table(mds(sdmx_code)) # GOVERNMENT REVENUE
setnames(ggr_a_imf, "COUNTRY", "geo")

sdmx_code <- "IMFWEO/WEO/.GGX_NGDP"
ggx_a_imf <- as.data.table(mds(sdmx_code)) # GOVERNMENT TOTAL EXPENDITURE
setnames(ggx_a_imf, "COUNTRY", "geo")

sdmx_code <- "IMFWEO/WEO/.GGXCNL_NGDP"
ggdef_a_imf <- as.data.table(mds(sdmx_code)) # GOVERNMENT DEFICIT (NLB)
setnames(ggdef_a_imf, "COUNTRY", "geo")

sdmx_code <- "IMFWEO/WEO/.GGSB_NPGDP"
ggsb_a_imf <- as.data.table(mds(sdmx_code)) # GOVERNMENT STRUCTUAL BALANCE
setnames(ggsb_a_imf, "COUNTRY", "geo")

sdmx_code <- "IMFWEO/WEO/.GGXONLB_NGDP"
ggpd_a_imf <- as.data.table(mds(sdmx_code)) # GOVERNMENT PRIMARY DEFICIT
setnames(ggpd_a_imf, "COUNTRY", "geo")

sdmx_code <- "IMFWEO/WEO/.GGXWDN_NGDP"
ggnd_a_imf <- as.data.table(mds(sdmx_code)) # GOVERNMENT NET DEBT
setnames(ggnd_a_imf, "COUNTRY", "geo")

sdmx_code <- "IMFWEO/WEO/.GGXWDG_NGDP"
ggdeb_a_imf <- as.data.table(mds(sdmx_code)) # GOVERNMENT GROSS DEBT
setnames(ggdeb_a_imf, "COUNTRY", "geo")

sdmx_code <- "IMFWEO/WEO/.BCA_NGDPD"
ca_a_imf <- as.data.table(mds(sdmx_code)) # CURRENT ACCOUNT
setnames(ca_a_imf, "COUNTRY", "geo")

### United Nations Statistics Division ###

### World Bank ###

### Organisation for economic cooperation and development ###


#EU B0 57
#EA U2 47



raw_data_list <- list(
  
  "Exchange rates" = list(
    
      "exreur_d_ecb" = 
          list("title" = "Daily exchange rates in Euro",
               "data" = exreur_d_ecb,
               "unit" = "Currency per Euro",
               "source" = "European Central Bank",
               "link" = "https://data.ecb.europa.eu/main-figures/ecb-interest-rates-and-exchange-rates/exchange-rates",
               "currency" = unique(exreur_d_ecb$CURRENCY),
               "dropdown" = "CURRENCY",
               "contains_geo" = FALSE
               ),
      "reer_m_estat" = 
          list("title" = "Monthly real effective exchange rate (against 42 advanced economies)",
               "data" = reer_m_estat,
               "unit" = "Index (2015 = 100)",
               "source" = "Eurostat",
               "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/fb5e56f3-4f7f-4dfe-814d-48187454cf32?lang=en&createdAt=2025-09-20T16:45:27Z",
               "geo" = unique(reer_m_estat$geo),
               "dropdown" = "geo",
               "contains_geo" = TRUE
               ),
      "reer_q_estat" = 
          list("title" = "Quarterly real effective exchange rate (against 42 advanced economies)",
               "data" = reer_q_estat,
               "unit" = "Index (2015 = 100)",
               "source" = "Eurostat",
               "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/6c1750ba-2925-4452-9ffe-1d60f55b9091?lang=en&createdAt=2025-09-20T16:46:16Z",
               "geo" = unique(reer_q_estat$geo),
               "dropdown" = "geo",
               "contains_geo" = TRUE
               ),
      "reer_a_estat" = 
          list("title" = "Annual real effective exchange rate (against 42 advanced economies)",
               "data" = reer_a_estat,
               "unit" = "Index (2015 = 100)",
               "source" = "Eurostat",
               "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/20c37485-03d6-4339-ae12-bb1805c02fcb?lang=en&createdAt=2025-09-20T16:46:30Z",
               "geo" = unique(reer_a_estat$geo),
               "dropdown" = "geo",
               "contains_geo" = TRUE
               )
  ),
  
  "Inflation" = list(
      
      "infl_m_estat" = 
          list("title" = "Monthly year-on-year inflation",
               "data" = infl_m_estat,
               "unit" = "1-year % change",
               "source" = "Eurostat",
               "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/aa1f3956-7570-4484-943d-848293a1c413?lang=en",
               "geo" = unique(infl_m_estat$geo),
               "dropdown" = "geo",
               "contains_geo" = TRUE
               ),
      "infl_a_estat" = 
          list("title" = "Yearly average inflation",
               "data" = infl_a_estat,
               "unit" = "Average 1-year % change",
               "source" = "Eurostat",
               "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/687ce2e8-9c27-4660-aad0-896b206a973e?lang=en",
               "geo" = unique(infl_a_estat$geo),
               "dropdown" = "geo",
               "contains_geo" = TRUE
               )
  ),
  
  "Interest rates" = list(
    
      "gbyemu_m_estat" = 
          list("title" = "Government bond yields (EMU convergence data) - 10 year maturity, monthly data",
               "data" = gbyemu_m_estat,
               "unit" = "%",
               "source" = "Eurostat",
               "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/01876f4f-3864-40b3-81b9-969322c79f1e?lang=en&createdAt=2025-09-20T18:36:47Z",
               "geo" = unique(gbyemu_m_estat$geo),
               "dropdown" = "geo",
               "contains_geo" = TRUE
               ),
      "gbyemu_q_estat" = 
          list("title" = "Government bond yields (EMU convergence data) - 10 year maturity, quarterly data",
               "data" = gbyemu_q_estat,
               "unit" = "%",
               "source" = "Eurostat",
               "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/00f03944-a9d9-44d0-9bc7-7ed26a0b794b?lang=en&createdAt=2025-09-20T18:46:12Z",
               "geo" = unique(gbyemu_q_estat$geo),
               "dropdown" = "geo",
               "contains_geo" = TRUE
               ),
      "gbyemu_a_estat" = 
          list("title" = "Government bond yields (EMU convergence data) - 10 year maturity, annual data",
               "data" = gbyemu_a_estat,
               "unit" = "%",
               "source" = "Eurostat",
               "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/44fa70dd-8e5f-4399-a73c-d632184b6c7d?lang=en&createdAt=2025-09-20T18:46:47Z",
               "geo" = unique(gbyemu_a_estat$geo),
               "dropdown" = "geo",
               "contains_geo" = TRUE
               ),
      "gby_m_estat" = 
          list("title" = "Government bond yields - 10 year maturity, monthly data",
               "data" = gby_m_estat,
               "unit" = "%",
               "source" = "Eurostat",
               "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/0dfa32d1-b1c7-493f-a6cd-f4f053064ac2?lang=en&createdAt=2025-09-20T18:47:45Z",
               "geo" = unique(gby_m_estat$geo),
               "dropdown" = "geo",
               "contains_geo" = TRUE
               ),
      "gby_a_estat" = 
          list("title" = "Government bond yields - 10 year maturity, annual data",
               "data" = gby_a_estat,
               "unit" = "%",
               "source" = "Eurostat",
               "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/2261e407-acd5-4522-b940-7d74561bd54c?lang=en&createdAt=2025-09-20T18:48:28Z",
               "geo" = unique(gby_a_estat$geo),
               "dropdown" = "geo",
               "contains_geo" = TRUE
               ),
      "mmir_m_estat" = 
          list("title" = "Money market interest rates (3-month rate), monthly data",
               "data" = mmir_m_estat,
               "unit" = "%",
               "source" = "Eurostat",
               "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/ebf6838e-54f9-4a8e-9449-1164bde795bc?lang=en&createdAt=2025-09-20T18:49:35Z",
               "geo" = unique(mmir_m_estat$geo),
               "dropdown" = "geo",
               "contains_geo" = TRUE
               ),
      "mmir_q_estat" = 
          list("title" = "Money market interest rates (3-month rate), quarterly data",
               "data" = mmir_q_estat,
               "unit" = "%",
               "source" = "Eurostat",
               "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/548dfeea-49ac-4f02-ae03-7f722c75e2f5?lang=en&createdAt=2025-09-20T18:50:17Z",
               "geo" = unique(mmir_q_estat$geo),
               "dropdown" = "geo",
               "contains_geo" = TRUE
               ),
      "mmir_a_estat" = 
          list("title" = "Money market interest rates (3-month rate), annual data",
               "data" = mmir_a_estat,
               "unit" = "%",
               "source" = "Eurostat",
               "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/84e31c03-b227-4d24-9167-d6a8bd762b68?lang=en&createdAt=2025-09-20T18:50:34Z",
               "geo" = unique(mmir_a_estat$geo),
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
               "geo" = unique(gdp_q_estat$geo),
               "dropdown" = "geo",
               "contains_geo" = TRUE
               ),
      "gdp_a_estat" =
          list("title" = "GDP growth year-on-year",
               "data" = gdp_a_estat,
               "unit" = "1-year % change",
               "source" = "Eurostat",
               "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/06ebf0df-05f1-43be-80ba-ad2a53ccc467?lang=en",
               "geo" = unique(gdp_a_estat$geo),
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
               "geo" = unique(hpi_q_estat$geo),
               "dropdown" = "geo",
               "contains_geo" = TRUE
               ),
      "hpc_q_estat" =
          list("title" = "House price quarter-on-quarter change, quarterly data",
               "data" = hpc_q_estat,
               "unit" = "1-quarter % change",
               "source" = "Eurostat",
               "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/70a5a23b-65b7-4441-a11e-bcb90898175d?lang=en",
               "geo" = unique(hpc_q_estat$geo),
               "dropdown" = "geo",
               "contains_geo" = TRUE
               ),
      "hpca_q_estat" =
          list("title" = "House price year-on-year change, quarterly data",
               "data" = hpca_q_estat,
               "unit" = "1-year % change",
               "source" = "Eurostat",
               "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/433b3d4d-66ab-48d4-9df2-5d6ae20aec57?lang=en",
               "geo" = unique(hpca_q_estat$geo),
               "dropdown" = "geo",
               "contains_geo" = TRUE
               ),
      "hpi_a_estat" =
          list("title" = "House price index, annual data",
               "data" = hpi_a_estat,
               "unit" = "Annual average 1-year % change",
               "source" = "Eurostat",
               "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/9828f72e-b10e-44a4-8b97-b753298fc9a6?lang=en",
               "geo" = unique(hpi_a_estat$geo),
               "dropdown" = "geo",
               "contains_geo" = TRUE
               ),
      "hpc_a_estat" =
          list("title" = "Average year-on-year house price change, annual data",
               "data" = hpc_a_estat,
               "unit" = "Annual average 1-year % change",
               "source" = "Eurostat",
               "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/9828f72e-b10e-44a4-8b97-b753298fc9a6?lang=en",
               "geo" = unique(hpc_a_estat$geo),
               "dropdown" = "geo",
               "contains_geo" = TRUE
               )
  ),
  
#  "Financial sector" = list(
#    "hpi_q_estat" =
#      list("title" = "XXXXXXXXXXXXXXXXX",
#           "data" = hpi_q_estat,
#           "unit" = "Index (2015 = 100)",
#           "source" = "Eurostat",
#           "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/45dc8bde-dd19-4c38-b039-f54b3b3ac756?lang=en",
#           "geo" = c("SE", "DK"),
#           "dropdown" = "geo",
#           "contains_geo" = TRUE
#      )
#  ),

  "External sector" = list(
    
      "expi_a_estat" =
          list("title" = "Export volume indices",
               "data" = expi_a_estat,
               "unit" = "Index (2021 = 100)",
               "source" = "Eurostat",
               "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/9e500c72-d144-4893-8fb7-c9e1a661bf06?lang=en",
               "geo" = unique(expi_a_estat$geo),
               "dropdown" = "geo",
               "contains_geo" = TRUE
               ),
      "ca_q_estat" =
          list("title" = "Quarterly current account",
               "data" = ca_q_estat,
               "unit" = "% of GDP",
               "source" = "Eurostat",
               "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/75003669-fae2-4159-91d1-01e515a32f3e?lang=en",
               "geo" = unique(ca_q_estat$geo),
               "dropdown" = "geo",
               "contains_geo" = TRUE
               ),
      "ca_a_estat" =
          list("title" = "Annual current account",
               "data" = ca_a_estat,
               "unit" = "% of GDP",
               "source" = "Eurostat",
               "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/60ebe3ec-c221-4667-a21a-842435014fd2?lang=en",
               "geo" = unique(ca_a_estat$geo),
               "dropdown" = "geo",
               "contains_geo" = TRUE
               ),
      "nlb_q_estat" =
          list("title" = "Quarterly net-lending borrowing (current plus capital account)",
               "data" = nlb_q_estat,
               "unit" = "% of GDP",
               "source" = "Eurostat",
               "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/a7d1b4d6-d971-4192-b290-d5bb996613e1?lang=en",
               "geo" = unique(nlb_q_estat$geo),
               "dropdown" = "geo",
               "contains_geo" = TRUE
               ),
      "nlb_a_estat" =
          list("title" = "Annual net-lending borrowing (current plus capital account)",
               "data" = nlb_a_estat,
               "unit" = "% of GDP",
               "source" = "Eurostat",
               "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/79d46cda-841d-41a3-8bfc-a0ff830bac3e?lang=en",
               "geo" = unique(nlb_a_estat$geo),
               "dropdown" = "geo",
               "contains_geo" = TRUE
               ),
      "niip_q_estat" =
          list("title" = "Quarterly net international investment position",
               "data" = niip_q_estat,
               "unit" = "% of GDP",
               "source" = "Eurostat",
               "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/9c646860-3784-480a-a1d9-547574404130?lang=en",
               "geo" = unique(niip_q_estat$geo),
               "dropdown" = "geo",
               "contains_geo" = TRUE
               ),
      "niip_a_estat" =
          list("title" = "Annual net international investment position",
               "data" = niip_a_estat,
               "unit" = "% of GDP",
               "source" = "Eurostat",
               "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/c1d541a1-1806-4d03-b090-6329061ad1b7?lang=en",
               "geo" = unique(niip_a_estat$geo),
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
               "geo" = unique(ggdef_q_estat$geo),
               "dropdown" = "geo",
               "contains_geo" = TRUE
               ),
      "ggdef_a_estat" =
          list("title" = "Annual general government deficit (Net lending-borrowing)",
               "data" = ggdef_a_estat,
               "unit" = "% of GDP",
               "source" = "Eurostat",
               "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/7cb8900f-55ab-49c9-8605-5d311b05bf8b?lang=en",
               "geo" = unique(ggdef_a_estat$geo),
               "dropdown" = "geo",
               "contains_geo" = TRUE
               ),
      "ggdeb_q_estat" =
          list("title" = "Quarterly general government gross debt",
               "data" = ggdeb_q_estat,
               "unit" = "% of GDP",
               "source" = "Eurostat",
               "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/84e9385d-1d0d-4e45-9af8-58e1bd72bdee?lang=en",
               "geo" = unique(ggdeb_q_estat$geo),
               "dropdown" = "geo",
               "contains_geo" = TRUE
               ),
      "ggdeb_a_estat" =
          list("title" = "Annual general government gross debt",
               "data" = ggdeb_a_estat,
               "unit" = "% of GDP",
               "source" = "Eurostat",
               "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/00118295-e7f4-4dbe-878b-ba352d57fc68?lang=en",
               "geo" = unique(ggdeb_a_estat$geo),
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
               "geo" = unique(une_m_estat$geo),
               "dropdown" = "geo",
               "contains_geo" = TRUE
               ),
      "une_q_estat" =
          list("title" = "Quarterly unemployment rate, seasonally adjusted",
               "data" = une_q_estat,
               "unit" = "% of labour force aged 15-74",
               "source" = "Eurostat",
               "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/618d95e1-8a21-4045-b659-d2d08175b96e?lang=en",
               "geo" = unique(une_q_estat$geo),
               "dropdown" = "geo",
               "contains_geo" = TRUE
               ),
      "une_a_estat" =
          list("title" = "Annual unemployment rate",
               "data" = une_a_estat,
               "unit" = "% of labour force aged 15-74",
               "source" = "Eurostat",
               "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/2d502e6c-153a-4aac-af57-4dc623210dd8?lang=en",
               "geo" = unique(une_a_estat$geo),
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
               "geo" = unique(gnpls_a_estat$geo),
               "dropdown" = "geo",
               "contains_geo" = TRUE
               ),
      "t1cr_a_estat" =
          list("title" = "Tier-1 capital ratio banking sector",
               "data" = t1cr_a_estat,
               "unit" = "% of risk-weighted assets",
               "source" = "Eurostat",
               "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/4bf52ccb-7ee2-4ae2-a682-ae3ae4e23370?lang=en&createdAt=2025-09-14T09:48:47Z",
               "geo" = unique(t1cr_a_estat$geo),
               "dropdown" = "geo",
               "contains_geo" = TRUE
               ),
      "roeb_a_estat" =
          list("title" = "Return on equity of banks",
               "data" = roeb_a_estat,
               "unit" = "%",
               "source" = "Eurostat",
               "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/d721d559-eafc-4acf-96e8-ba6400fd10b2?lang=en&createdAt=2025-09-14T09:48:59Z",
               "geo" = unique(roeb_a_estat$geo),
               "dropdown" = "geo",
               "contains_geo" = TRUE
               )

    
  ),

  "Consolidated banking data" = list(
    
      "gnpls_a_ecb" =
          list("title" = "Gross non-performing loans, domestic and foreign entities",
               "data" = gnpls_a_ecb,
               "unit" = "% of gross loans",
               "source" = "European Central Bank",
               "link" = "https://data.ecb.europa.eu/data/datasets/CBD2?dataset%5B0%5D=Consolidated%20Banking%20data%20%28CBD2%29&advFilterDataset%5B0%5D=Consolidated%20Banking%20data%20%28CBD2%29",
               "geo" = unique(gnpls_a_ecb$geo),
               "dropdown" = "geo",
               "contains_geo" = TRUE
               ),
      "t1cr_a_ecb" =
          list("title" = "Tier-1 capital ratio banking sector",
               "data" = t1cr_a_ecb,
               "unit" = "% of risk-weighted assets",
               "source" = "European Central Bank",
               "link" = "https://data.ecb.europa.eu/data/datasets/CBD2?dataset%5B0%5D=Consolidated%20Banking%20data%20%28CBD2%29&advFilterDataset%5B0%5D=Consolidated%20Banking%20data%20%28CBD2%29",
               "geo" = unique(t1cr_a_ecb$geo),
               "dropdown" = "geo",
               "contains_geo" = TRUE
               ),
      "roeb_a_ecb" =
          list("title" = "Return on equity of banks",
               "data" = roeb_a_ecb,
               "unit" = "%",
               "source" = "European Central Bank",
               "link" = "https://data.ecb.europa.eu/data/datasets/CBD2?dataset%5B0%5D=Consolidated%20Banking%20data%20%28CBD2%29&advFilterDataset%5B0%5D=Consolidated%20Banking%20data%20%28CBD2%29",
               "geo" = unique(roeb_a_ecb$geo),
               "dropdown" = "geo",
               "contains_geo" = TRUE
               ),
      "cbl_a_ecb" =
          list("title" = "Consolidated banking leverage, domestic and foreign entities (asset-to-equity multiple)",
               "data" = cbl_a_ecb,
               "unit" = "% of GDP",
               "source" = "European Central Bank",
               "link" = "https://data.ecb.europa.eu/data/datasets/CBD2?dataset%5B0%5D=Consolidated%20Banking%20data%20%28CBD2%29&advFilterDataset%5B0%5D=Consolidated%20Banking%20data%20%28CBD2%29",
               "geo" = unique(cbl_a_ecb$geo),
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

