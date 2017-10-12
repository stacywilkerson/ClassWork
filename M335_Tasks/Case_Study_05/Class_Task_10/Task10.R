#Task 10: Strings and grep

library(tidyverse)
library(dplyr)
library(tidyr)
library(stringr)
library(haven)
library(plyr)
library(readr)

#I am referencing code from Josh Bowers. 

#For gsub:
#^ start snchor
#. looks for periods
#(space) looks for the spaces
#+ matches everything
#$ looks for every subsequent match
#. the data is referenced
#str_split it takes every thing and strings it together by ""

read_lines("randomletters.txt") %>%
  gsub("[^. ]+$", "", .) %>%
  str_split("") %>%
  unlist() %>%
  .[c(1, seq( from = 1700, to = 57800, by = 1700 ))] %>%
  paste( collapse = "" )
# Result: "the plural of anecdote is not data."

#We read in the txt file and we want to look numbers from 0-9, 
#we change them to be numeric and then letters[.] changes all of 
#them to be letters so that it will write the result.
read_lines("randomletters_wnumbers.txt") %>%
  str_extract_all( "[0-9]+" ) %>%
  unlist() %>%
  as.numeric() %>%
  letters[.] %>%
  paste( collapse = "" )
# Result: "expertsoftenpossessmoredatathanjudgment"

read_lines("randomletters.txt") %>%
  gsub("[\\. ]+$", "", .) %>%
  str_extract_all( "[aeiou]+" ) %>%
  unlist() %>%
  .[which.max(nchar(.))]
# Result: "oaaoooo"


