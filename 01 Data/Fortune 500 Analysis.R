require("jsonlite")
require("RCurl")
require("ggplot2")

# Three data frames for specific graphing cases
df <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select * from FORTUNE_500_COMPANIES"'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521/PDBF15DV.usuniversi01134.oraclecloud.internal', USER='cs329e_ctm686', PASS='orcl_ctm686', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE), ))


summary(df)
head(df)

