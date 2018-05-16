---
title: "Navigating_the_Software"
author: "David_Halvorsen"
date: "May 16, 2018"
output: html_document
---

```{r}
#This is the third chapter of the R Cookbook.
# getting the working directory AND setting the working directory
getwd()
setwd("blogblog")
getwd()
```

```{r}
# save workspace from the command line:
save.image()
# lol, that doesn't work
```
```{r}
# history function reminds you of recent commands
history()
# the default is the most recent 25 lines, but you can ask for more
history(100) # last 100
history(Inf) # all commands EVER
```
```{r}
# the search path shows you a list of installed packages
search()
```
```{r}
# packages can't be run immediately aftering being installed
# you need to call them into the library 
# library(PACKAGENAMEHERE)

```
```{r}
# library worked, but I don't know the right arguments for the command. Learning part is good doe
f <- 1
x <- 1
y <- 1
#lda(x)
library(MASS)
#lda(f ~ x + y)
# detach removes the selected package
detach(package:MASS)
lda(f ~ x + y)
```
```{r}
# standard datasets are available through the search path
# to add more datasets, do this:
#data(dsname, package="pkgname")
# this is from the pressure dataset
head(pressure)
# this'll get help with the dataset
help(pressure)
# this'll bring up a list of available datasets
data()
```
```{r}
# this calls the Cars93 dataset from the MASS package:
data(Cars93, package="MASS")
# This shows all the available datasets from the MASS package
data(package="MASS")
```
```{r}
# The library function by itself prints a list of installed packages
library()
```
```{r}
# Here are more specific details for installed packages
installed.packages()[,c("Package","Version")]
```
```{r}
# installing a program you found from CRAN
# install.packages("PACKAGENAME")
```
```{r}
# call the choose CRAN mirror function
# I did Selection: 68 (for USA CA1)
chooseCRANmirror()
# this'll print the web address for the selected CRAN mirror:
# options("repos")[[1]][1]
```
```{r}
# run R commands from a script file like so
# source("myScript.r")
```
```{r}
# This tells you OS directory for R
Sys.getenv("R_HOME")
```
