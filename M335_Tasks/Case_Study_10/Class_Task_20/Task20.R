#Task 20: Getting in SHP

library(tidyverse)
library(sf)
library(USAboundaries)
library(ggrepel)
library(maps)
library(maptools)
library(ggplot2)
library(purrr)

#I looked at code from Mikal Bitter

#shp <- read_sf( "./shp" )
#dam <- read_sf( "./dam" )
#hyd <- read_sf( "./hyd250" )
#wells <- read_sf( "./wells" )

# Selecting just Idaho 
shapeData <- shp %>% filter(StateName == "Idaho")
View(shapeData)

# Selecting just the rivers 
hydData <- hyd %>% 
  filter(FEAT_NAME == "Snake River" | FEAT_NAME == "Henrys Fork")

# Selecting dams greater than 50 acres
damData <- dam %>% 
  filter(SurfaceAre > 50, Source == "SNAKE RIVER" | Source == "HENRYS FORK")

#Selecting wells greater than 5000 in production
wellData <- wells %>% 
  filter(Production > 5000)

# Creating Transformations 
my.proj <- "+proj=gall"
shapeData_tr <- shapeData %>% st_transform( crs = my.proj)
hyData_tr <- hydData %>% st_transform( crs = my.proj)
damData_tr <- damData %>% st_transform(crs = my.proj)
wellData_tr <- wellData %>% st_transform(crs = my.proj)

# Creating the Plots 
ggplot() + 
  geom_sf(data = shapeData_tr, inherit.aes = FALSE) +
  geom_sf(data = hyData_tr, inherit.aes = FALSE, color = "blue") + 
  geom_sf(data = damData_tr, inherit.aes = FALSE, color = "red") + 
  geom_sf(data = wellData_tr, inherit.aes = FALSE, color = "green") +
  theme_bw()

ggsave("task20.png", width = 10, height = 9)


