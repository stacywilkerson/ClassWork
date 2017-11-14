#Task 19: Spatial Data and Measure Data

library(tidyverse)
library(magrittr)
library(rvest)
library(stringr)
library(USAboundaries)
library(ggrepel)
library(sf)
library(ggmap)
library(maps)
library(maptools)
library(devtools)
library(rgeos)
library(rgl)
library(rgdal)
library(ggplot2)
library(dplyr)

#nc <- read_sf(system.file("shape/nc.shp", package = "sf"), 
              #quiet = TRUE,  
              #stringsAsFactors = FALSE)
#states <- sf::st_as_sf(map("state", plot = FALSE, fill = TRUE))
#nz_map <- map("nz", plot = FALSE)
#nz_sf <- st_as_sf(nz_map)
#ggplot() +
  #geom_sf(data = states, fill = NA) +
  #geom_sf(data = nc) +
  #theme_bw()
states <- st_as_sf(map("state", plot = FALSE, fill = TRUE))
cities <- us_cities(2010) %>%
  filter(!(state %in% c("AK", "HI"))) %>%
  group_by(state) %>%
  top_n(3, population)
secondpop <- cities %>%
  top_n(2, population)
toppop <- cities %>%
  top_n(1, population)
USstates <- us_states(resolution = "high")
idaho <- us_counties(states = "Idaho", resolution = "high")

#Task 19 map 
ggplot() +
  geom_sf(data = states, fill = NA) +
  geom_point(data = cities, aes(x = lon, y = lat, size = population/1000), 
    color = "lightblue") +
  geom_point(data = secondpop, aes(x = lon, y = lat, size = population/1000), 
    color = "blue") +
  geom_point(data = toppop, aes(x = lon, y = lat, size = population/1000), 
    color = "darkblue") +
  geom_label_repel(data = toppop, aes(x = lon, y = lat, label = city), 
    label.size = .05, label.padding = .05) +
  labs(x = "Longitude", y = "Latitude", title = "") +
  theme_bw()
  #theme(legend.position="none") +
  #theme(legend.background = element_rect(fill = "blue")) +
  #theme(legend.text = element_text(size=7,color = "blue"))
ggsave("task19.png", width = 10, height = 9)

#Task 19 projection (class activity)

#my_proj <- "+proj=robin +lon_0=0 +x_0=0 +y_0=0 +ellps=WGS84 +datum=WGS84 +units=m +no_defs"
#my_proj <- "+proj=moll +lat_0=45 +lon_0=-115 +x_0=0 +y_0=0 +ellps=WGS84 +datum=WGS84 +units=m +no_defs"
#my_proj <- "+proj=moll +lon_0=0 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs"
my_proj <- "+proj=robin +lon_0=0 +x_0=0 +y_0=0 +a=6371000 +b=6371000 +units=m +no_defs"

states_tr <- states %>% st_transform( crs = my_proj)
idaho_tr <- idaho %>% st_transform( crs = my_proj)

ggplot() +
  geom_sf(data = states_tr, inherit.aes = FALSE, fill = NA) +
  geom_sf(data = idaho_tr, inherit.aes = FALSE, fill = NA) #+
  #geom_point(data = cities, aes(x = lon, y = lat, size = population/1000), 
      #color = "lightblue") +
  #geom_point(data = secondpop, aes(x = lon, y = lat, size = population/1000), 
      #color = "blue") +
  #geom_point(data = toppop, aes(x = lon, y = lat, size = population/1000), 
      #color = "darkblue") +
  #theme_bw()


