---
title: "tidyverse by the numbers"
author: "Mara Averick"
date: "2018-12-06"
output: 
  html_document:
    keep_md: TRUE
---





__Data retrieved: 2018-12-06__


```r
options(readr.num_columns = 0) # supress columns message
overview <- read_csv(here::here("mloss", "data", "overview.csv"))
org_downloads <- read_csv(here::here("mloss", "data", "org_downloads.csv"))
count_commit_num <- read_csv(here::here("mloss", "data", "count_commit_num.csv"))
tot_contrib_commits<- read_csv(here::here("mloss", "data", "tot_contrib_commits.csv"))
```


