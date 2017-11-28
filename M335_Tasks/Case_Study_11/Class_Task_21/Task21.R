#Task 21: Interactive Maps

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

library(leaflet)
library(sp)
library(htmltools)
#Examples: 
m <- leaflet() %>%
  addTiles() %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=174.768, lat=-36.852, popup="The birthplace of R")
m 
mapStates = map("state", fill = TRUE, plot = FALSE)
leaflet(data = mapStates) %>% addTiles() %>%
  addPolygons(fillColor = topo.colors(10, alpha = NULL), stroke = FALSE)

#Data from Task 19
states <- us_states() %>%
  filter(!(stusps %in% c("AK","HI","PR")))

cities <- us_cities() %>%
  filter(!(state %in% c("AK","HI","PR"))) %>%
  group_by(state) %>%
  arrange(state, desc(population)) %>%
  filter(population >= nth(population, 1))

#cities <- us_cities(2010) %>%
  #filter(!(state %in% c("AK", "HI"))) %>%
  #group_by(state) %>%
  #top_n(3, population)
#secondpop <- cities %>%
  #top_n(2, population)
#toppop <- cities %>%
  #top_n(1, population)

#idaho_counties <- us_counties(states = c("Idaho"))

greenLeafIcon <- makeIcon(
  iconUrl = "http://leafletjs.com/examples/custom-icons/leaf-green.png",
  iconWidth = 38, iconHeight = 95,
  iconAnchorX = 22, iconAnchorY = 94,
  shadowUrl = "http://leafletjs.com/examples/custom-icons/leaf-shadow.png",
  shadowWidth = 50, shadowHeight = 64,
  shadowAnchorX = 4, shadowAnchorY = 62
)

#Task 19 Leaflet (top pop in each state)
leaflet(data = states) %>% 
  addTiles() %>%
  addPolygons(fillColor = topo.colors(10, alpha = NULL), 
            stroke = FALSE) %>%
  addMarkers(data = cities, icon = greenLeafIcon, 
            label = ~htmlEscape(cities$name_2010))

#Trying to change colors 
leaflet(data = states) %>% 
  addTiles() %>%
  addPolygons(color = "Blues", 
              stroke = FALSE) %>%
  addCircleMarkers(data = cities, radius = ~cities$population/800000, 
             label = ~htmlEscape(cities$name_2010))

