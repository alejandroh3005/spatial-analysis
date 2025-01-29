cluster.info.revised <- function (geo, poly.adm1, by.adm1 = "NAME_1") 
{
  poly.adm1 <- sf::st_as_sf(poly.adm1)
  # poly.adm2 <- sf::st_as_sf(poly.adm2)
  points_sf <- sf::st_as_sf(geo)
  if (!any(sf::st_is_valid(poly.adm1))) {
    stop("sf object not valid, consider validating it via sf::st_make_valid")
  }
  # if (!any(sf::st_is_valid(poly.adm2))) {
  #   stop("sf object not valid, consider validating it via sf::st_make_valid")
  # }
  cluster.info <- points_sf %>% select(cluster = DHSCLUST, LONGNUM, LATNUM)
  wrong.points <- cluster.info[which(cluster.info$LATNUM < 1e-07 &
                                       cluster.info$LONGNUM < 1e-07), ]$cluster
  admin1.sf <- st_join(cluster.info, poly.adm1) %>% sf::st_transform(st_crs(poly.adm1))
  cluster.info$admin1.name <- as.data.frame(admin1.sf)[, by.adm1]
  # admin2.sf <- st_join(cluster.info, poly.adm2) %>% sf::st_transform(st_crs(poly.adm2))
  # if (dim(admin2.sf)[1] > dim(cluster.info)[1]) {
  #   admin2.sf <- admin2.sf[!duplicated(admin2.sf[, c("cluster")]), 
  #   ]
  #   warning("overlapping admin regions exist, the first match is kept")
  # }
  # cluster.info$admin2.name <- as.data.frame(admin2.sf)[, by.adm2]
  # cluster.info$admin2.name.full <- paste0(cluster.info$admin1.name, 
  #                                         "_", cluster.info$admin2.name)
  cluster.info <- cluster.info[!(cluster.info$cluster %in% 
                                   points_sf$DHSCLUST[wrong.points]), ]
  wrong.points <- c(wrong.points, cluster.info[which(is.na(cluster.info$admin1.name)), 
  ]$cluster)
  cluster.info <- cluster.info[!(cluster.info$cluster %in% 
                                   wrong.points), ]
  cluster.info <- as.data.frame(cluster.info)
  return(list(data = cluster.info, wrong.points = wrong.points))
}