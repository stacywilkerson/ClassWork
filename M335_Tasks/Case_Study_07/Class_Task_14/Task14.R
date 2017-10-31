#Task 14: Does the weather hurt my bottom line?
library(riem)
library(tidyverse)
library(lubridate)
library(magrittr)
library(forcats)
library(weatherData)

#carwash <- read_csv("https://byuistats.github.io/M335/data/carwash.csv")
#write_csv(carwash, path = "./carwash_sales.csv")
carwash <- read_csv("./carwash_sales.csv")

#weatherdata <- riem_measures(station = "RXE", date_start = "2016-05-13", date_end = "2016-07-18")
#saveRDS(weatherdata, file = "./weather_data.RDS")
weatherdata <- read_rds("./weather_data.RDS")

cw <- 
  carwash %>%
  mutate(hour = ceiling_date(ceiling_date(ymd_hms(time), 'hours')))  %>%
  {aggregate(amount ~ hour, data = ., FUN = sum)}

wd <- 
  weatherdata %>%
  select(valid, tmpf) %>%
  filter(!is.na(tmpf)) %>%
  mutate(hour = ceiling_date(ceiling_date(ymd_hms(valid), 'hours')))  %>%
  {aggregate(tmpf ~ hour, data = ., FUN = mean)}

data <- 
  left_join(cw, wd, by = c("hour" = "hour"))

data %>%
  ggplot() +
  geom_jitter(mapping = aes(x = hour, y = amount, color = tmpf, alpha = 0.5)) +
  geom_smooth(mapping = aes(x = hour, y = amount)) +
  theme_bw() +
  labs(x = "Hours (Day Labels Shown)", y = "Amount", 
       title = "Relationship Between Sales and Temperature By Hour of the Day")

ggsave( "task14plot.png", device = "png", width = 9, height = 6)



#Plotly Graphic
library(plotly)
#data$amount <- data.matrix(data$amount, rownames.force = NA)
#plot_ly(z = ~data.matrix(data)) %>% add_surface()

plot_ly(x = data$hour, y = data$tmpf, z = data.matrix(data$amount)) %>% 
  add_surface()

plot_ly(data, x = ~hour, y = ~tmpf, z = ~amount,
  marker = list(color = ~amount, 
  colorscale = c('#FFE1A1', '#683531'), 
  showscale = TRUE)) %>%
  add_markers()



