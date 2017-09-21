# Flight Analysis
Stacy Wilkerson  



## Background and Questions
You just started your internship at a big firm in New York, and your manager gave you an extensive file of flights that departed JFK, LGA, or EWR in 2013. From this data (install.packages(nycflights13)) your manager wants you to answer the following questions;

Question 1: If I am leaving before noon, what are my top two airline options at each airport (JFK, LGA, EWR) that will have the least amount of delay time?

Question 2: Which origin airport is best to minimize my chances of a late arrival when I am using Delta Airlines?

Question 3: Which destination airport is the worst airport for arrival time?

## Results


## Analysis

### Question 1


```r
flights1 <- data.table(nycflights13::flights)
flights2 <- data.table(nycflights13::airlines)
flights3 <- merge(flights1, flights2, by = "carrier")
Q1flights <- filter(flights3, sched_dep_time < 1200)
Q1flights <- select(Q1flights, origin, carrier, name, dep_delay)
```




```r
ggplot(Q1flights, aes(x = name, y = dep_delay)) +
  geom_boxplot() +
  #geom_jitter(alpha = 0.6) +
  facet_grid(. ~ origin) +
  theme(axis.text.x = element_text(angle = 90, hjust = 1), plot.title = element_text(hjust = 0.5))
```

![](Task4analysis_files/figure-html/unnamed-chunk-2-1.png)<!-- -->



### Question 2


```r
Q2flights <- subset(flights3, carrier == "DL")
pander(favstats(Q2flights$arr_delay ~ Q2flights$origin))
```


------------------------------------------------------------------------------
 Q2flights$origin   min   Q1   median   Q3   max   mean   sd     n    missing 
------------------ ----- ---- -------- ---- ----- ------ ----- ----- ---------
       EWR          -54  -14     -4     10   847   8.78  52.19 4295     47    

       JFK          -71  -23    -11     5    931  -2.379 41.31 20559    142   

       LGA          -58  -18     -7     9    915  3.928  45.16 22804    263   
------------------------------------------------------------------------------


### Question 3


```r
Q3flights <- select(flights3, dest, arr_delay)
Q3flights1 <- group_by(Q3flights, dest)
Q3flights1 <- summarise(Q3flights1, arr_mean_delay = mean(arr_delay, na.rm = TRUE))
```





