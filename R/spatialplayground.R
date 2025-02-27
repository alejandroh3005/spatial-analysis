library(sf)
library(ggplot2)

# Example data: points with distances
points_df <- data.frame(
  id = 1:3,
  lon = c(-77.0365, -77.0434, -77.0500),
  lat = c(38.8977, 38.8895, 38.8814),
  distance = c(1000, 1500, 2000)  # Distance in meters
)

# Convert to sf object
points_sf <- st_as_sf(points_df, coords = c("lon", "lat"), crs = 4326)

# Transform to projected CRS for accurate buffering (use appropriate UTM zone)
points_sf <- st_transform(points_sf, crs = 32618)

# Create buffer polygons
buffers_sf <- st_buffer(points_sf, dist = points_sf$distance)

# Transform back to WGS84 for plotting
buffers_sf <- st_transform(buffers_sf, crs = 4326)

# Plot with ggplot
ggplot() +
  geom_sf(data = buffers_sf, fill = "blue", alpha = 0.3) +
  geom_sf(data = points_sf, color = "red", size = 2) +
  theme_minimal()
