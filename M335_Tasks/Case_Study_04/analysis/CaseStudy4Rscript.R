#Case Study 4 R Script

library(tidyverse)
library(dplyr)
library(tidyr)
library(openxlsx)
library(stringr)
library(haven)
library(readr)
library(readxl)
library(foreign)
library(plyr)

#reading in 6 data sets
#Worldwide estimates
download.file("https://byuistats.github.io/M335/data/heights/Height.xlsx", "Heightdata.xlsx")
heightdata.xlsx <- read_xlsx("Heightdata.xlsx", skip = 2)

#Other 5 
#German male conscription in Bavaria (g19)
heightdata.dta <- read_dta("https://byuistats.github.io/M335/data/heights/germanconscr.dta")

#Heights of bavarian male conscripts (b19)
heightdata2.dta <- read_dta("https://byuistats.github.io/M335/data/heights/germanprison.dta")

#Heights of south-east and south-west greman soldiers born in the 18th centry (g18)
heightdata.dbf <- read.dbf("./B6090.DBF")

#BLS Wage and Height Data (w20)
heightdata.csv <- read_csv("https://github.com/hadley/r4ds/raw/master/data/heights.csv")

#National Survey (us20)
heightdata.sav <- read_sav("http://www.ssc.wisc.edu/nsfh/wave3/NSFH3%20Apr%202005%20release/main05022005.sav")

#first data set
heightdatalong.xlsx <- heightdata.xlsx %>%
  gather(`1800`:`2011`, key = "year", value = "height") %>%
  na.omit %>%
  rename(c("year" = "year_decade"))
#saving 
write.xlsx(heightdatalong.xlsx, "heightdatalong.xlsx")

#merge other 5 data sets 

#tidy sav data
us20 <- heightdata.sav %>%
  select(RT216I, DOBY) %>%
  mutate(height_cm = 2.54 * RT216I, 
         birth_century = 20, 
         study = "NATS") %>%
  rename(c("RT216I" = "height_in", "DOBY" = "birth_year")) %>%
  mutate(birth_year = (birth_century - 1) * 100 + birth_year)

#tidy dbf data
g18 <- heightdata.dbf %>%
  select(GEBJ, CMETER) %>%
  mutate(birth_century = 18, study = "GermanH", height_in = CMETER / 2.54) %>% 
  rename(c("GEBJ" = "birth_year", "CMETER" = "height_cm"))
#tidy csv data
w20 <- heightdata.csv %>% 
  select(height) %>%
  mutate(birth_century = 20, study = "BLS", birth_year = 1950, height_cm = 2.54 * height) %>%
  rename(c("height" = "height_in"))

#tidy dta data
g19 <- heightdata.dta %>% 
  select(bdec, height) %>%
  mutate(birth_century = 19, height_in = height/2.54, study = "GermanConscr") %>%
  rename(c("height" = "height_cm", "bdec" = "birth_year"))

#tidy dta2 data
b19 <- heightdata2.dta %>% 
  select(bdec, height) %>%
  mutate(birth_century = 19, height_in = height/2.54, study = "GermanPrison") %>%
  rename(c("height" = "height_cm", "bdec" = "birth_year"))

#use rbind
alldata <- bind_rows(b19, g18, g19, w20, us20)

#saving 
saveRDS(alldata, "alldata.rds")





