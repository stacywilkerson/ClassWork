# Task 15: My investment is better than yours
Stacy Wilkerson  





```r
#For this task I used code from Josh Bowers.
my_tickers <- c( "TM", "NFLX", "BA" )
friend_tickers <- c( "AMZN", "DIS", "FB" )

prices <-
  tq_get(
    c( my_tickers, friend_tickers ),
    get = "stock.prices",
    complete_cases = TRUE,
    from = "2012-10-01",
    to = "2017-10-01"
  )

me <-
  prices %>%
  filter(symbol == my_tickers)


friend <-
  prices %>%
  filter(symbol == friend_tickers )


me %>%
  ggplot( aes( x = date, y = adjusted ) ) +
  geom_line() +
  facet_wrap( ~ symbol ) +
  theme_bw() +
  theme( axis.text.x = element_text(angle = 45, hjust = 1) ) +
  labs(title = "My Stocks Price Preformace")
```

![](Task15_files/figure-html/unnamed-chunk-1-1.png)<!-- -->

```r
friend %>%
  ggplot( aes( x = date, y = adjusted ) ) +
  geom_line() +
  facet_wrap( ~ symbol ) +
  theme_bw() +
  theme( axis.text.x = element_text(angle = 45, hjust = 1) ) +
  labs(title = "My Friends Stocks Price Performance")
```

![](Task15_files/figure-html/unnamed-chunk-1-2.png)<!-- -->

```r
prices %>%
  group_by(symbol) %>%
  ggplot( aes( x = date, y = adjusted ) ) +
  geom_boxplot() +
  facet_wrap( ~ symbol, scales="free" ) +
  theme_bw()
```

![](Task15_files/figure-html/unnamed-chunk-1-3.png)<!-- -->

Looking at the different stocks it looks like my friend has the great price perforce in their Amazon stocks, but their other two stocks are not as good as Amazon. Comparatively my stocks are all doing fairly well and they appear to overall be better than my friends stocks. We can see from the boxplot which is used to visualize all of these stocks together, that Amazon is the best stock overall. The boxplot also helps us to see the distribution of the data. 






