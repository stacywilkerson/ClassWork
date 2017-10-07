# Case Study 4: I can clean your data
Stacy Wilkerson  










```r
#first data set
heightdatalong.xlsx <- heightdata.xlsx %>%
  gather(`1800`:`2011`, key = "year", value = "height") %>%
  na.omit %>%
  rename(c("year" = "year_decade"))
```




```r
#merge other 5 data sets 

#tidy sav data
height.sav <- heightdata.sav %>%
  select(RT216I, DOBY) %>%
  mutate(height_cm = 2.54 * RT216I, 
         birth_century = 20, 
         study = "NATS") %>%
  rename(c("RT216I" = "height_in", "DOBY" = "birth_year")) %>%
  mutate(birth_year = (birth_century - 1) * 100 + birth_year)
  
#tidy dbf data
height.dbf <- heightdata.dbf %>%
  select(Z, GEBJ, CMETER, GEBJZ) %>%
  mutate(birth_century = 18, study = "GermanH") %>% 
  rename(c("GEBJ" = "birth_year", "Z" = "height_in", "CMETER" = "height_cm"))

#tidy csv data
height.csv <- heightdata.csv %>% 
  select(height) %>%
  mutate(birth_century = 20, study = "BLS", birth_year = 1950, height_cm = 2.54 * height) %>%
  rename(c("height" = "height_in"))

#tidy dta data
gconscr.dta <- heightdata.dta %>% 
  select(bdec, height) %>%
  mutate(birth_century = 19, height_in = height/2.54, study = "GermanConscr") %>%
  rename(c("height" = "height_cm", "bdec" = "birth_year"))

#tidy dta2 data
gprision.dta <- heightdata2.dta %>% 
  select(bdec, height) %>%
  mutate(birth_century = 19, height_in = height/2.54, study = "GermanPrison") %>%
  rename(c("height" = "height_cm", "bdec" = "birth_year"))

#use rbind
allheightdata <- bind_rows(height.dbf, height.csv, height.sav, gconscr.dta, gprision.dta)
```








