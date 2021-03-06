# Semester Task List
Stacy Wilkerson  



## Semester Deliverables

#### [Semester Project](project.html)

The deliverables for your [semester project](project.html) are assigned in [case study 9](weekly_projects/cs09_details.html) and [case study 12](weekly_projects/cs12_details.html). However you should keep a steady workflow on this project throughout the semester.  

#### [Leadership](leadership.html)

* [x] Complete the class task before class starts
* [x] Be a class lead during class (complete at least one of the following)
    * [x] Supporting other students that need help getting through the last difficulties they had with the task
    * [ ] Presenting key coding methods or steps to the entire class
* [x] Complete this task 12 times during the semester. 

#### [Portfolio](weekly_projects/cs13_details.html)

[Case study 13](weekly_projects/cs13_details.html) provides the checklist items for your portfolio. This portfolio package will be the basis of your final grade.  

## Weekly Case Studies

#### [Case Study 1](weekly_projects/cs01_details.html)

* [x] Find  two or three articles/posts that have a good visualization that answers an interesting question
* [x] Create an `.Rmd` file in R-Studio
    * [x] Title it Case Study 1 in the YAML
    * [x] Include links to the visualization post you found
    * [x] Write a one paragraph critique of each visualization
    * [x] Add the R code below to your `.Rmd` file
    * [x] Knit the file to `.html` and keep the `.md` file as well
* [x] Create an account on [slack](https://f17dwv.slack.com/signup){target="blank"}.  You might create a catchy username that matches your other social media usernames and that can follow you for your career. Mine is `hathawayj`.
    * [x] Upload your intermediary `.md` file to the general channel in our Slack group

#### [Case Study 2](weekly_projects/cs02_details.html)

* [x] Watch the [Hons Rosling video](https://www.ted.com/talks/hans_rosling_shows_the_best_stats_you_ve_ever_seen){target="blank"}
* [x] Recreate the two graphics shown below (so they match exactly)
    * [x] Build weighted average data set using  `weighted.average()` and GDP with  `mutate()`
    * [x] Use `library(ggplot2)` and the `theme_bw()` to duplicate the first plot
    * [x] Use `library(ggplot2)` and the `theme_bw()` to duplicate the second plot. You will need to use the new data to make the black lines.
    * [x] Use `ggsave()` and save each plot as a `.png` with a width of 15 inches
* [x] Build an Rmd file that has the following features
    * [x] The title is the same as listed in the task
    * [x] You have two sections -- 1) Background, 2) Images
    * [x] In the background section write a few sentences about what you learned making these plots
    * [x] In the Image section have two chunks.  One for each image
* [x] Save your `.Rmd', `.md`, and the two `.png`'s of the plots into your git repository.

#### [Case Study 3](weekly_projects/cs03_details.html)

* [x] Provide a brief summary of the [FiveThirtyEight article](https://fivethirtyeight.com/features/gun-deaths/){target="blank"}
    * [x] Create one plot that is similar to one view of their visualization in the article
    * [x] Write a short paragraph summarizing their article
* [x] Address the client's need for emphasis areas of their commercials for different seasons of the year.
    * [x] Provide plots that help them know the race and type of gun death that they should address (2-4 visualizations seem necessary)
    * [x] Write a short paragraph describing each image
* [x] Compile your `.md` and `.html` file into your git repository
* [x] Complete the recommended reading on posting issues.
* [x] Find two other student's compiled files in their repository and provide feedback using the issues feature in GitHub (If they already have three issues find a different student to critique)
* [x] Address 1-2 of the issues posted on your project and push the updates to GitHub

#### [Case Study 4](weekly_projects/cs04_details.html)

* [x] Use the correct functions from `library(haven)` , `library(readr)`, and `library(readxl)` to load the 6 data sets listed [here](https://byuistats.github.io/M335/maleheight.html){target="blank"}
* [x] Tidy the Worldwide estimates `.xlsx` file
    * [x] Make sure the file is in long format with year as a column
    * [x] Use the `separate()` and `mutate()` functions to create a decade column
* [x] Import the other five datasets into R and combine them into one tidy dataset.
    * [x] This dataset should have the following columns - birth_year, height.cm, height.in, and study_id
* [x] Save the two tidy datasets to your repository
* [x] Make a plot with decade on the x-axis and height in inches on the y-axis with the points from Germany highlighted based on the data from the `.xlsx` file.
* [x] Make a small-multiples plot of the five studies to examine the question of height distribution across centuries
* [x] Create an `.Rmd` file with 1-2 paragraphs summarizing your graphics and how those graphics answer the driving question
* [x] Compile your `.md` and `.html` file into your git repository
* [x] Find two other student's compiled files in their repository and provide feedback using the issues feature in GitHub (If they already have three issues find a different student to critique)
* [x] Address 1-2 of the issues posted on your project and push the updates to GitHub

#### [Case Study 5](weekly_projects/cs05_details.html)

* [x] Load the R package from GitHub `devtools::install_github("hathawayj/buildings")` and find out what data is in the package
* [x] Use the `ProjectTitle` column to create split out new groups from `Food_Beverage_Service` using the groupings in the code section below
    * [x] Your client has a decent memory of the data and commercial construction in Idaho -- Check your code and data to make sure you are not missing or incorrectly assigning groups to the buildings
    * [x] Your client expects to provide new data for 2010 and 2011 so your script needs to do the work.  Make sure you don't use Excel to manipulate anything
* [x] Create an `.Rmd` file with 2-3 paragraphs summarizing your 4-5 graphics that inform the client questions
* [x] Compile your `.md` and `.html` file into your git repository
* [x] Find two other student's compiled files in their repository and provide feedback using the issues feature in GitHub (If they already have three issues find a different student to critique)
* [x] Address 1-2 of the issues posted on your project and push the updates to GitHub

#### [Case Study 6](weekly_projects/cs06_details.html)

* [x] Get the scripture and savior name data into R
    * [x] Use the `library(downloader)` R package and the `download()` function to download the data from http://scriptures.nephi.org/downloads/lds-scriptures.csv.zip
    * [x] Use the `unzip()` function to decompress the zip file that you downloaded
    * [x] Read in the `.csv` file that was in the zip file and examine the structure of the data
    * [x] Use `read_rds(gzcon(url("https://byuistats.github.io/M335/data/BoM_SaviorNames.rds")))` to download and load the Savior names table into R
* [x] Use the list of Savior names and the Book of Mormon verses to figure out the average number of words between references to the Savior
    * [x] Find each instance of a Savior name in the Book of Mormon
    * [x] Split on those instances and then count the number of words between each instance
    * [x] Use the example code below for some hints on how to tackle this task
* [x] Report the average number of words between each Savior name
* [x] Create an `.Rmd` file with 1-2 paragraphs summarizing your graphic that shows how the distance between Savior names is distributed across the Book of Mormon
* [x] Compile your `.md` and `.html` file into your git repository
* [x] Find two other student's compiled files in their repository and provide feedback using the issues feature in GitHub (If they already have three issues find a different student to critique)
* [x] Address 1-2 of the issues posted on your project and push the updates to GitHub

#### [Case Study 7](weekly_projects/cs07_details.html)

* [x] Read in the data from `https://byuistats.github.io/M335/data/sales.csv` and format it for visualization and analysis
    * [x] The data are for businesses in the mountain time zone make sure you read in times correctly
    * [x] This is point of sale (pos) data, so you will need to use `library(lubridate)` to create the correct time aggregations
    * [x] Check the data for any inaccuracies
* [x] Help your boss understand which business is the best investment through visualizations
    * [x] Provide an understanding and recommendation for hours of operation
    * [x] We don't have employee numbers, but sales traffic can help.  Provide some visualizations on customer traffic
    * [x] Provide a final comparison of the six companies and a final recommendation
* [x] Compile your `.md` and `.html` file into your git repository
* [x] Find two other student's compiled files in their repository and provide feedback using the issues feature in GitHub (If they already have three issues find a different student to critique)
* [x] Address 1-2 of the issues posted on your project and push the updates to GitHub

#### [Case Study 8](weekly_projects/cs08_details.html)

* [x] For your coding development use these tickers - `tickers_today <- c("CXW", "F", "GM", "JCP", "KR", "WDC", "NKE","T", "WDAY", "WFC", "WMT")`
* [x] Use `library(dygraphs)` to build interactive visualizations of the stock performances over the last 5 years.
* [x] Make a `library(ggplot2)` graphic that helps you build a solid question around how an investor would use volume in their trading strategy
* [x] Create an `.Rmd` file with 1-2 paragraphs summarizing your graphics and the choices you made in your visualization
* [x] Compile your `.md` and `.html` file into your git repository
* [x] Find two other student's compiled files in their repository and provide feedback using the issues feature in GitHub (If they already have three issues find a different student to critique)
* [x] Address 1-2 of the issues posted on your project and push the updates to GitHub

#### [Case Study 9](weekly_projects/cs09_details.html) (Semester Project)

* [x] Develop a data driven question
    * [x] Meet with Bro. Palmer and discuss his Math 108 data. 
    * [x] Learn what question Bro. Palmer is trying to address and come with up with a data driven question. 
* [x] Build an interactive document that has links to sources with a description of the quality of each
    * [x] Download and read in Math 108 data
    * [x] Format the data for analysis in an R script or an Rmarkdown
    * [x] Write a short summary (background) of the read in process and some coding secrets you learned
    * [x] Include 2-3 quick visualizations that you used to check the quality of your data
    * [x] Summarize the limitations of your final compiled data in addressing your original question

#### [Case Study 10](weekly_projects/cs10_details.html)

* [x] Read in the `permits` data from `devtools::install_github("hathawayj/buildings")` and tidy it for spatial visualization needs
    * [x] You will need to merge it with the spatial data so it will require some column mutation
* [x] Use the `library(USAboundaries)` package to get the spatial maps for the US
    * [x] You will need to use the FIPS numbers to merge with the permit data
* [x] Create state level totals from the county level data to show general patterns across the US over time
* [x] Create an `.Rmd` file with 1-2 paragraphs summarizing your graphics and the choices you made in your visualization to address the reporter's needs
* [x] Compile your `.md` and `.html` file into your git repository
* [x] Find two other student's compiled files in their repository and provide feedback using the issues feature in GitHub (If they already have three issues find a different student to critique)
* [x] Address 1-2 of the issues posted on your project and push the updates to GitHub

#### [Case Study 11](weekly_projects/cs11_details.html)

* [x] Choose one of the two options below
    * [x] Recreate [Case Study 10](https://byuistats.github.io/M335/weekly_projects/cs10_details.html){target="blank"} tasks with leaflet
    * [x] Find your own spatial data that interests you and build a visualization
* [ ] Create an `.Rmd` file with 1-2 paragraphs summarizing your graphics and the choices you made in your visualization
* [x] Compile your `.md` and `.html` file into your git repository
* [x] Find two other student's compiled files in their repository and provide feedback using the issues feature in GitHub (If they already have three issues find a different student to critique)
* [ ] Address 1-2 of the issues posted on your project and push the updates to GitHub

#### [Case Study 12](weekly_projects/cs12_details.html) (Semester Project)

* [x] Present your visualization based analysis that addresses your question
    * [x] Choose your flavor of `.Rmd` for your presentation
    * [x] Build a stand-alone analysis that helps a reader answer the question at hand with that available data
    * [x] Present your analysis to your group and update your presentation based on the feedback
    * [x] Get feedback from 2-3 fellow classmates on your presentation and update it based on their feedback
    * [ ] Present your draft presentation to a data scientist (Bro. Palmer) to review for clarity
    * [ ] If given time present your work in class, at a society meeting, the research and creative works conference, or as a blog post online

#### [Case Study 13](weekly_projects/cs13_details.html) (For Exit Interview)

* [x] Complete LinkedIn, GitHub, Slack profiles that have been connected to our BYU-I data science community
* [x] A cover letter stating the key concepts and techniques that you learned during our projects and your goals to continue learning in this area - include a grade request that represents your knowledge and task completion
* [x] A resume that includes the skills you have learned during our projects
* [x] A semester task form that records your completed tasks during the semester
* [x] Semester project submission on GitHub
* [x] Submit this material electronically and in person during our exit interview

## Daily Class Tasks


### Tasks 1 - 12

#### [Class Task 1](class_tasks/cs01_details.html)

* [x] Get R and R-Studio running on your computer
    * [x] Install the swirl package `install.packages("swirl")`
    * [x] Use `library(swirl)` and follow directions to get 'R Programming: The basics of programming in R' course loaded
* [x] Watch John Rauser Presentation
    * [x] Use the [following google spreadsheet](http://bit.ly/m335rauser){target="blank"} to input your three favorite segments of the video. Use your course standardized name `lastname` `firstletterfirstname` -- For example mine is `hathawayj`.

#### [Class Task 2](class_tasks/task02_details.html)

* [x] Complete Lessons 1-4 in the `library(swirl)` package of the course `install_course("R Programming E")`
    * [x] Use `byui.m335@gmail.com` for the email address where you will send confirmation of the completion of each lesson.
    * [x] Use our course standardization for your name `lastname` `firstletterfirstname` for each. For example, mine is `hathawayj`.
* [x] Complete Lessons 5-9 in the `library(swirl)` package of the course `install_course("R Programming E")`
    * [x] Follow sub-directions above.
* [x] Read a short article about the [data scientist Florence Nightengale](http://www.atlasobscura.com/articles/florence-nightingale-infographic){target="blank"} and write a two to three sentence paragraph critique of her coxcomb graphic based on your perceptions of quality graphics.
    * [x] In class, be prepared to submit your write up electronically.

#### [Class Task 3](class_tasks/task03_details.html)

* [x] Install git on your computer
* [x] Create a GitHub account
* [x] Work through readings on git and github
* [x] Make sure git works in R-Studio
* [x] Add a folder to our class git repository
    * [x] Name the folder lastname_firstname
    * [x] Add a README.md in the folder
    * [x] Type one or two sentences that describe you
    * [x] Make sure you pull and push

#### [Class Task 4](class_tasks/task04_details.html)

* [x] Address the three questions in the background description
* [x] Create one `.rmd` file that has your report
    * [x] Have a section for each question
    * [x] Make sure your code is in the report but defaults to hidden
    * [x] Write an introduction section that describes your results
    * [x] Add a short paragraph in each section describing the plot and any other essential elements of your work
* [x] Push your `.Rmd`, `.md`, and `.html` to your GitHub repo
* [x] Be prepared to discuss your analysis in the upcoming class

#### [Class Task 5](class_tasks/task05_details.html)

* [x] Review the [Our World in Data](https://ourworldindata.org/){target="blank"} webpage and find a graphic that interests you.
    * [x] Recreate that graphic in R after downloading the data from their website
    * [x] Find some interesting features on your graphic. Then do some reasearch online to find out the cause of that feature for an annotation that you can add to your plot.
    * [x] Use a [clean way](http://ggplot2.tidyverse.org/reference/annotate.html) to add the information from the online search to your graphic
* [x] Explore the world data on `child_mortality` and create an interesting graphic that highlights this dataset.
    * [x] Use `devtools::install_github("drsimonj/ourworldindata") to get a larger dataset on `child_mortality`
    * [x] Create a graphic that you could use in a final presentation to summarize world child mortatility
* [x] Include your plots in an `.Rmd` file with short paragraph describing your plots
* [x] Push your `.Rmd`, `.md`, and `.html` to your GitHub repo

#### [Class Task 6](class_tasks/task06_details.html)

* [x] Explore the world data on `financing_healthcare` and create an interesting graphic that highlights this dataset.
    * [x] Use `devtools::install_github("drsimonj/ourworldindata")` to get a larger dataset on `financing_healthcare`
    * [x] Create a graphic that you could use in a final presentation to summarize world child mortatility
* [x] Push your `.Rmd`, `.md`, and `.html` to your GitHub repo

#### [Class Task 7](class_tasks/task07_details.html)

* [x] Use the appropriate functions in `library(readr)`, `library(haven)`, `library(readxl)` to read in the five files found on [GitHub](https://github.com/byuistats/data/tree/master/Dart_Expert_Dow_6month_anova){target="blank"}
    * [x] Use `read_rds(gzcon(url("WEBLOCATION.rds")))` to download and load the `.rds` file type
    * [x] Use the `library(downloader)` R package and use the `download()` function to download the xlsx data as `read_xlsx()` cannot read files from the web path
    * [x] Use `tempfile()` function for downloading files
* [x] Check that all five files you have imported into R are in fact the same with `all.equal()`
* [x] Use one of the files to make a graphic showing the performance of the Dart, DJIA, and Pro stock selections
    * [x] Include a boxplot, the jittered returns, and the average return in your graphic
* [x] Save your `.R` script and your image to your repository and be ready to share your code that built your graphic in class

#### [Class Task 8](class_tasks/task08_details.html)

* [x] Import the Dart_Expert_Dow_6month_anova data from GitHub (see details in previous task)
* [x] The `contestant_period` column is not "tidy" we want to create an `month_end` and `year_end` column from the information it contains
* [x] Save your "tidy" data as an `.rds` object
* [x] Create a plot that shows the six-month returns by the year in which the returns are collected
* [x] Create a table of the DJIA returns with months on the rows and years in the columns ("spread" the data)
* [x] Include your plots in an `.Rmd` file with short paragraph describing your plots. Make sure to display the `tidyr` code in your file
* [x] Push your `.Rmd`, `.md`, and `.html` to your GitHub repo

#### [Class Task 9](class_tasks/task09_details.html)

* [x] Install the `library(Lahman)` and examine the available data sets available
    * [x] Find the 4-5 different data sets that you will need to show full college and player names as well as their annual earnings
* [x] Install the `library(blscrapeR)` and use the `inflation_adjust(2017)` function to get all earnings in 2017 dollars
* [x] Make a plot showing how professional baseball player earnings that played baseball at BYU compared to the players from other Utah schools
* [x] Save your `.R` script and image to your repository and be ready to share your code and image at the beginning of class

#### [Class Task 10](class_tasks/task10_details.html)

* [x] Use the `readr::read_lines()` function to read in each string - [randomletters.txt](https://byuistats.github.io/M335/data/randomletters.txt){target="blank"} and [randomletters_wnumbers.txt](https://byuistats.github.io/M335/data/randomletters_wnumbers.txt){target="blank"}
* [x] With the `randomletters.txt` file, pull out every 1700 letter (e.g. 1, 1700, 3400, <U+0085>) and find the quote that is hidden - the quote ends with a period
* [x] With the `randomletters_wnumbers.txt` file, find all the numbers hidden and convert those numbers to letters using the letters order in the alphabet to decipher the message
* [x] With the `randomletters.txt` file, remove all the spaces and periods from the string then find the longest sequence of vowels.
* [x] Save your `.R` script to your repository and be ready to share your code solution at the beginning of class

#### [Class Task 11](class_tasks/task11_details.html)

* [x] Load your "tidy" data from the previous task using the stock return data
* [x] Create a plot that shows the six-month returns by the month in which the returns are collected using the eight years of data
* [x] Include your plots in an `.Rmd` file with short paragraph describing your plots. Make sure to display the `tidyr` code in your file
* [x] Push your `.Rmd`, `.md`, and `.html` to your GitHub repo

#### [Class Task 12](class_tasks/task12_details.html)

* [x] Use the `library(downloader)` R package and the `download()` function to download the data from http://scriptures.nephi.org/downloads/lds-scriptures.csv.zip
* [x] Use the `unzip()` function to decompress the zip file that you downloaded
* [x] Read in the `.csv` file that was in the zip file and examine the structure of the data
* [x] Address questions 1 & 2 using the `stri_stats_latex()` and `str_locate_all()` functions from `install.packages("stringr")` and `install.packages("stringi")`
* [x] Create a visualization that addresses question 3
* [x] Create an `.Rmd` file with 1-2 paragraphs and your graphics that answers the three questions
* [x] Compile your `.md` and `.html` file into your git repository

### Tasks 13 -24

#### [Class Task 13](class_tasks/task13_details.html)

* [x] Create a `.png` image for each question
* [x] Save your script and `.png` files to GitHub
* [x] Be prepared to share your visualization and why your reasoning for how the visualization answers the question

#### [Class Task 14](class_tasks/task14_details.html)

* [x] Read in the car wash data `https://byuistats.github.io/M335/data/carwash.csv` and format it for the needs of this task
    * [x] Create a new hourly grouping variable using `ceiling_date()` from `install.packages("lubridate")`
    * [x] Aggregate the point of sale data into hour sales totals
* [x] Use `getWeatherForDate(opt_detailed = TRUE, opt_temperature_columns = FALSE, opt_all_columns = TRUE)` for station `KRXE` from `library(weatherData)` to get the matching temperatures
    * [x] Create a new hourly variable that matches your car wash hourly variable
* [x] Merge the two datasets together
* [x] Create a visualization that provides insight into the relationship between sales and temperature by hour of the day

#### [Class Task 15](class_tasks/task15_details.html)

* [x] List the three stocks that your friend picks and the three that you pick
* [x] Pull the price performance data using `library(tidyquants)` or `library(quantmod)`
* [x] Build a visualization that shows who is winning each day of the competition
* [x] In the previous visualization or with another visualization show which stock is helping the winner the competition
* [x] Create an `.Rmd` file with 1-2 paragraphs summarizing your graphics and the choices you made in the data presentation
* [x] Compile your `.md` and `.html` file into your git repository

#### [Class Task 16](class_tasks/task16_details.html)

* [x] Build the `library(dygraphs)` plot that shows the Kroger (KG) stock price performance
* [x] Add a few annotations to the plot that identify the historical context for the price change
* [x] Create an `.Rmd` file with 1-2 paragraphs summarizing your graphics and the choices you made in the data presentation
* [x] Compile your `.md` and `.html` file into your git repository

#### [Class Task 17](class_tasks/task17_details.html)

* [x] Repeat the [task 10 tasks](https://byuistats.github.io/M335/class_tasks/task10_details.html){target="blank"} using three functions that you built

#### [Class Task 18](class_tasks/task18_details.html)

* [x] Use the graphical perception rules you learned in your reading to make a graph that is accurate but poorly built to communicate data.
* [x] Use the graphical perception rules you learned in your reading to make a graph that is accurate and optimizes data communication.
* [x] Create an `.Rmd` file with 1-2 paragraphs summarizing your 2 graphics and the choices you made in the data presentation
* [x] Compile your `.md` and `.html` file into your git repository

#### [Class Task 19](class_tasks/task19_details.html)

* [x] Create a `.png` image that closely matches my example
    * [x] Note that `fill = NA` in `geom_sf()` will not fill the polygons with a grey color
    * [x] Note that `library(USAboundaries)` has three useful functions - `us_cities()`, `us_states()`, and `us_counties()`
* [x] Save your script and `.png` files to GitHub

#### [Class Task 20](class_tasks/task20_details.html)

* [x] Read in all four of the necessary shp file datasets (see description)
* [x] Filter all the data for the specific needs of Idaho
* [x] Create a `.png` image that plots the required information
* [x] Save your script and `.png` files to GitHub
* [x] Be prepared to discuss your observations of the well and dam locations in our next class meeting

#### [Class Task 21](class_tasks/task21_details.html)

* [x] See tasks for [Task 19](https://byuistats.github.io/M335/class_tasks/task19_details.html) or [Task 20](https://byuistats.github.io/M335/class_tasks/task20_details.html)

#### [Class Task 22](class_tasks/task22_details.html)

* [x] Complete the listed reading for class discussion
* [x] Find an additional article on R or Python and "big data" and write a summary of the article
* [x] Create an `.Rmd` file summarizing your reading
* [x] Compile your `.md` and `.html` file into your git repository

#### [Class Task 23](class_tasks/task23_details.html)

* [x] Complete listed reading for class discussion

#### [Class Task 24](class_tasks/task24_details.html)

* [x] Complete listed reading for class discussion




