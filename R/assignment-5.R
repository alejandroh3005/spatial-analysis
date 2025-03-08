rm(list=ls())

getwd()
setwd("C:/Users/alega/Downloads/UR-Pipeline-Demo/UR-Pipeline-Demo/Data/Benin_2017/shapeFiles_gadm/")

library(sf)
country_shp_analysis <- readRDS("country_shp_analysis.rds")
print(country_shp_analysis)
View(country_shp_analysis[["Admin-1"]])
benin_adm1 <- country_shp_analysis[["Admin-1"]]
benin_name1 <- benin_adm1$NAME_1
benin_name1

## Create ben_ref_tab
ben_ref_tab <- data.frame(
  strata.adm.name = benin_name1,
  strata.adm.num = 1:nrow(benin_adm1)
  )
ben_ref_tab$strata.adm.char <- paste0("strata_adm_", ben_ref_tab$strata.adm.num)

population_data <- data.frame(
  Department = c("Alibori", "Atacora", "Atlantique", "Borgou", "Collines", "Couffo", 
                  "Donga", "Littoral", "Mono", "Oueme", "Plateau", "Zou", "Bénin"),
  Urban = c(210842, 287152, 621817, 528987, 197122, 206862, 228575, 679012, 
             247239, 690921, 281046, 280928, 4460503),
  Rural = c(656621, 485110, 776412, 685262, 520355, 538466, 314555, 0, 
            250004, 409483, 341326, 570652, 5548246),
  Total = c(867463, 772262, 1398229, 1214249, 717477, 745328, 543130, 679012, 
            497243, 1100404, 622372, 851580, 10008749)
  )
ben_ref_tab$urb_frac <- population_data$Urban[-13] / population_data$Total[-13]
ben_ref_tab

## Create ben_frame_ea and ben_sample_ea
cluster_data <- data.frame(
  Department = c("Alibori", "Atacora", "Atlantique", "Borgou", "Collines", 
                  "Couffo", "Donga", "Littoral", "Mono", "Oueme", "Plateau", "Zou", "Bénin"),
  Urban = c(11, 15, 27, 24, 13, 12, 13, 52, 17, 34, 17, 16, 251),
  Rural = c(31, 24, 38, 32, 33, 30, 19, 0, 20, 20, 21, 36, 304),
  Total = c(42, 39, 65, 56, 46, 42, 32, 52, 37, 54, 38, 52, 555) # Total clusters per department
)

ben_frame_ea <- data.frame(
  strata = benin_name1,
  urban = cluster_data$Urban[-13],
  rural = cluster_data$Rural[-13],
  total = cluster_data$Total[-13]
)

ben_sample_ea <- ben_frame_ea

## Save
getwd()
setwd("C:/Users/alega/Desktop/RProjects/spatial-analysis/data/Benin20172018/")

saveRDS(ben_ref_tab, "ben_ref_tab.rds")
saveRDS(ben_frame_ea, "ben_frame_ea.rds")
saveRDS(ben_sample_ea, "ben_sample_ea.rds")
