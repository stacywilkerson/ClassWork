#Semester Project 

library(tidyverse)
library(magrittr)
library(rvest)
library(stringr)
library(readr)

#Registration for Fall 2016 
waitlist_raw <- read_csv("WaitListData.csv", col_names = TRUE, col_types = cols(
  X1 = col_character(),
  X2 = col_character(),
  X3 = col_character(),
  X4 = col_character(),
  X5 = col_character(),
  `Waitlist # at end of day` = col_character(),
  X7 = col_character()
), skip = 1)

waitlist_raw %>% 
  filter(Status != "Withdrawn") %>%
  ggplot(aes(x = Status)) +
  geom_bar(aes(fill = `Waitlist Reason`)) +
  facet_grid(~`Course Sec`)



