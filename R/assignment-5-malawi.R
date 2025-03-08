rm(list=ls())

getwd()
setwd("C:/Users/alega/Downloads/UR-Pipeline-Demo/UR-Pipeline-Demo/Data/Malawi_2015/shapeFiles_gadm/")


library(sf)
country_shp_analysis <- readRDS("country_shp_analysis.rds")
print(country_shp_analysis)
View(country_shp_analysis[["Admin-1"]])
malawi_adm1 <- country_shp_analysis[["Admin-1"]]
malawi_name1 <- malawi_adm1$NAME_1
malawi_name1

## Create mwi_ref_tab
mwi_ref_tab <- data.frame(
  strata.adm.name = malawi_name1,
  strata.adm.num = 1:nrow(malawi_adm1)
)
mwi_ref_tab$strata.adm.char <- paste0("strata_adm_", mwi_ref_tab$strata.adm.num)

population_data <- data.frame(
  Region = c("North Central", "FCT-Abuja", "Benue", "Kogi", "Kwara", "Nasarawa", "Niger", "Plateau",
             "North East", "Adamawa", "Bauchi", "Borno", "Gombe", "Taraba", "Yobe"),
  Urban_Population = c(6306370, 899703, 463094, 1110418, 1619155, 411089, 931288, 871623,
                       4170827, 783977, 611908, 1387434, 539899, 355091, 492518),
  Rural_Population = c(14066404, 506682, 3790515, 2204910, 745731, 1459609, 3023387, 2335570,
                       14814133, 2395523, 4039764, 2784113, 1825601, 1904784, 1828398),
  Total_Population = c(20372774, 1406385, 4253609, 3315328, 2364886, 1870698, 3954675, 3207193,
                       18984960, 3179500, 4651672, 4171547, 2365500, 2295825, 2320916)
)
mwi_ref_tab$urb_frac <- population_data$Urban[-16] / population_data$Total[-1]
mwi_ref_tab

