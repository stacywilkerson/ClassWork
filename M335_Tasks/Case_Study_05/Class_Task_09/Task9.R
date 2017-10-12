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
inf <- inflation_adjust(2017)

sportsdata <- left_join(UTschools, CollegePlaying, by = "schoolID")
sportsdata <- left_join(sportsdata, salaries, by = "playerID") %>% 
  na.omit
sportsdata <- left_join(sportsdata, master, by = "playerID") %>% 
  na.omit %>%
  mutate(salaryadjusted = salary * inf$adj_value)

#Graphic

#Because of time and total exhaustion I am looking at code from Mikal Bitter. 

meanSal <-
  sportsdata %>%
  select(name_full, salaryadjusted) %>%
  group_by(name_full) %>%
  summarise(mean = mean(salaryadjusted))

BYUPLot <- 
  sportsdata %>% 
  group_by(name_full) %>% 
  ggplot(aes(x = name_full, y = salaryadjusted)) +
    geom_boxplot(fill = "red") +
    geom_point(data = meanSal, aes( x = name_full, y = mean ), size = 1.7, 
      color = "blue") + 
    scale_y_continuous( limits = c(0, 5000000) ) +
    labs( x = "University", y = "Salary adj for Inflation (2017)", 
      title = "Comparing Utah Salaries") +
    theme(axis.text.x = element_text(angle = 45, hjust = 1))

ggsave(filename = "Task9plot.png", plot = BYUPLot, width = 4, height = 4)






