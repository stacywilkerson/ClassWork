# Case Study 11: Interacting with space
Stacy Wilkerson  




##Background 
####Recreating Case Study 10 using leaflet

You have been asked to support a story for the local paper (that has a web presence) that looks back on the housing collapse and the early effects of residential construction. You have data on residential building permits from 1980 through 2010 for each county in the United States. Your colleague that is writing the article would like a few maps and graphics that highlight the single family building permit patterns across your state as well as the patterns in the US.

Remember the big story is the collapse of new building permits at the initial stages of the mortgage crisis. Make sure your graphics highlight the collapse in a clear and honest manner.

##Graphics


```r
states <- us_states(resolution = "high")
counties <- us_counties()
permitdata <-
  full_join(permits, counties, by = c("countyname" = "countyfp"))
singlefamily <- permitdata %>%
  filter(variable == "Single Family")
```





