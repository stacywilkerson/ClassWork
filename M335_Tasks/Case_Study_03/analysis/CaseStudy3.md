# Case Study 3: Reducing Gun Deaths (FiveThirtyEight)
Stacy Wilkerson  



###Gun Deaths in America Article  


```r
full_data %>% 
  na.omit %>%
  group_by(sex, race) %>%
  ggplot() +
    geom_bar(mapping = aes(x = race, fill = sex)) +
    facet_grid(. ~ intent) +
    theme_bw() +
    theme(axis.text.x = element_text(angle = 55, hjust = 1), plot.title = element_text(hjust = 0.5)) +
    scale_y_continuous(trans = "sqrt") +
    labs(x = "Race", y = "Number of Deaths (sqrt)", title = "Gun Deaths in America 2012 - 2014")
```

![](CaseStudy3_files/figure-html/unnamed-chunk-1-1.png)<!-- -->

In summarizing this article they used an interactive graph to try to show types of death based on race, intenet, and sex. 




```r
full_data %>%
  na.omit %>%
  mutate(count_var = race) %>%
  group_by(count_var, month) %>%
  summarise(count = n()/3) %>%
  ggplot(aes(x = month, y = count)) +
    geom_point(aes(color = count_var)) +
    geom_line(aes(color = count_var)) +
    coord_cartesian(ylim = c(0, 2000), xlim = c(0,12)) +
    theme_bw() +
    scale_x_continuous(breaks = 1:12)
```

![](CaseStudy3_files/figure-html/unnamed-chunk-2-1.png)<!-- -->




```r
full_data %>%
  na.omit %>%
  mutate(count_var = intent) %>%
  group_by(count_var, month) %>%
  summarise(count = n()/3) %>%
  ggplot(aes(x = month, y = count)) +
    geom_point(aes(color = count_var)) +
    geom_line(aes(color = count_var)) +
    coord_cartesian(ylim = c(0, 2000), xlim = c(0,12)) +
    theme_bw() +
    scale_x_continuous(breaks = 1:12)
```

![](CaseStudy3_files/figure-html/unnamed-chunk-3-1.png)<!-- -->






