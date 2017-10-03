#Task 7: Same Data Different Format
library(tidyverse)
library(readr)
library(haven)
library(readxl)
library(downloader)

#5 different downloads 

Dart.rds <- read_rds(gzcon(url("https://github.com/byuistats/data/raw/master/Dart_Expert_Dow_6month_anova/Dart_Expert_Dow_6month_anova.RDS")))

Dart.csv <- read_csv("https://github.com/byuistats/data/raw/master/Dart_Expert_Dow_6month_anova/Dart_Expert_Dow_6month_anova.csv", col)

Dart.dta <- read_dta("https://github.com/byuistats/data/raw/master/Dart_Expert_Dow_6month_anova/Dart_Expert_Dow_6month_anova.dta")

Dart.sav <- read_sav("https://github.com/byuistats/data/raw/master/Dart_Expert_Dow_6month_anova/Dart_Expert_Dow_6month_anova.sav")

download.file("https://github.com/byuistats/data/raw/master/Dart_Expert_Dow_6month_anova/Dart_Expert_Dow_6month_anova.xlsx", "Dart_Expert_Dow_6month_anova.xlsx")
Dart.xlsx <- read_xlsx("Dart_Expert_Dow_6month_anova.xlsx")

all.equal(Dart.rds, Dart.xlsx, check.attributes = FALSE)
all.equal(Dart.csv, Dart.xlsx, check.attributes = FALSE)
all.equal(Dart.dta, Dart.xlsx, check.attributes = FALSE)
all.equal(Dart.sav, Dart.xlsx, check.attributes = FALSE)





