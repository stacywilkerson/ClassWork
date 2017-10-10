#Task 9: Take me out to the ball game 

library(tidyverse)
library(dplyr)
library(tidyr)
library(stringr)
library(haven)
library(plyr)
library(Lahman)
library(blscrapeR)

#4-5 data tables unite
UTschools <- Schools %>%
  spread(key = state, value = city) %>%
  select(schoolID, name_full, UT) %>%
  na.omit
salaries <- Salaries %>% 
  select(playerID, salary) %>%
  na.omit
master <- Master %>%
  unite(playerName, nameGiven, nameLast, sep = " ") %>%
  select(playerName, playerID)

footballdata <- left_join(UTschools, CollegePlaying, by = "schoolID")
footballdata <- left_join(footballdata, salaries, by = "playerID") 
footballdata <- left_join(footballdata, master, by = "playerID") %>% 
  na.omit






