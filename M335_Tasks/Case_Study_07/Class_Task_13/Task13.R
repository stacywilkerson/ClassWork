#Task 13: How is the weather?
library(riem)
library(tidyverse)
library(lubridate)
library(magrittr)
library(forcats)

rxe <- riem_measures( station = "RXE", date_start = "2015-06-01", date_end = "2017-07-01" )
saveRDS( rxe, file = "./rxe.RDS" )
rxe <- read_rds("./rxe.RDS")

rxe %<>%
{mutate(., year = year( .$valid ), month = month( .$valid, label = TRUE ), 
    day = day( .$valid ), week_day = wday( .$valid, label = TRUE ),
    hour = hour( .$valid ), min = minute( .$valid ))}

#Plot 1
dailymaxtemp1 <-
  rxe %>%
  filter(., month == "Jun") %>%
  group_by(week_day) %>%
  summarise(maxT = max(tmpf, na.rm = TRUE))

dailymaxtemp1 %>%
  ggplot() +
  geom_point(mapping = aes(x = week_day, y = maxT, color = 96 < maxT)) +
  scale_color_manual( values = c("black", "red")) +
  labs(title = "Highest Max Temperature Verse Day of Week in June", 
    x = "Day of the Week", y = "Temperature") +
  theme_bw() +
  theme(legend.position="none", plot.title = element_text(hjust = 0.5))
#ggsave("plot1.png", device = "png", width = 9, height = 6)

#Plot 2
dailymaxtemp2 <- rxe %>%
  filter(hour == 14) %>%
  group_by(week_day) %>%
  summarise(maxT = max( tmpf, na.rm = TRUE ))

dailymaxtemp2 %>%
  ggplot() +
  geom_point(mapping = aes(x = week_day, y = maxT, color = 73 < maxT)) +
  scale_color_manual( values = c("black", "red")) +
  labs(
    title = "Highest Max Temperature Verse Day of Week in June at 2pm", 
    x = "Day of the Week", y = "Temperature") +
  theme_bw() +
  theme(legend.position="none", plot.title = element_text(hjust = 0.5))
#ggsave( "plot2.png", device = "png", width = 9, height = 6)


