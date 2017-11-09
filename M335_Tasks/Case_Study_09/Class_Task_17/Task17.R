#Task 17: Building Functions

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
extractchar <- function (text, start, by, to)
{
read_lines(text) %>%
  gsub("[^. ]+$", "", .) %>%
  str_split("") %>%
  unlist() %>%
  .[c(1, seq( from = start, to = to, by = by))] %>%
  paste( collapse = "" )
}
text <- "./randomletters.txt"
extractchar( text, start = 1700, by = 1700, to = 57800)
# Result: "the plural of anecdote is not data."

#We read in the txt file and we want to look numbers from 0-9, 
#we change them to be numeric and then letters[.] changes all of 
#them to be letters so that it will write the result.
extractnumbers <- function(text)
{
read_lines(text) %>%
  str_extract_all( "[0-9]+" ) %>%
  unlist() %>%
  as.numeric() %>%
  letters[.] %>%
  paste( collapse = "" )
}
text2 <- "./randomletters_wnumbers.txt"
extractnumbers(text2)
# Result: "expertsoftenpossessmoredatathanjudgment"
extractvouleseq <- function(text) {
read_lines(text) %>%
  gsub("[\\. ]+$", "", .) %>%
  str_extract_all( "[aeiou]+" ) %>%
  unlist() %>%
  .[which.max(nchar(.))]
}
text3 <- "./data/randomLetters.txt"
extractvouleseq(text3)
# Result: "oaaoooo"


