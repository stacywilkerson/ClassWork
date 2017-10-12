# Case Study 4: I can clean your data
Stacy Wilkerson  




```r
#Note: I spent about 9 hours on this Case Study
heightdatalong.xlsx <- read_xlsx("./heightdatalong.xlsx")
alldata.rds <- read_rds("./alldata.rds")
```

##World Country Plot


```r
#xlsx plot
germany <- 
  heightdatalong.xlsx %>%
  group_by(Country) %>%
  filter(Country == "Germany")

notgermany <- 
  heightdatalong.xlsx %>%
  group_by(Country) %>%
  filter(Country != "Germany")

ggplot() +
  #geom_line(data = notgermany, mapping = aes(x = year_decade, y = height, group = Country)) +
  geom_point(data = notgermany, mapping = aes(x = year_decade, y = height, group = Country)) +
   geom_line(data = germany, mapping = aes(x = year_decade, y = height, group = Country), color = "red") +
  geom_point(data = germany, mapping = aes(x = year_decade, y = height, group = Country), color = "red", size = 4) +
  theme_bw() +
  labs(x = "Decades", y = "Height (inches)", title = "World Country Height Estimates")
```

![](CaseStudy4_files/figure-html/unnamed-chunk-2-1.png)<!-- -->

##Height Distribution Plot


```r
#5 data sets plot
alldata.rds %>%
  ggplot(aes(y = height_cm, x = birth_century)) +
  geom_point() + 
  labs(x = "Century of Birth", y = "Height (cm)", title = "Height Distribution Across Centuries") +
  theme_bw()
```

![](CaseStudy4_files/figure-html/unnamed-chunk-3-1.png)<!-- -->





