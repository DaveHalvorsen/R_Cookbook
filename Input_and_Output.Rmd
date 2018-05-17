---
title: "Input_and_Output"
author: "David_Halvorsen"
date: "May 16, 2018"
output: html_document
---

```{r}
# for small datasets you can manually add your data
# scores <- c(61, 66, 90, 88, 100)
scores <- data.frame()
#scores <- edit(score)
#scores
```

```{r}
# enter columns as a vector ... I did this through the console and copied over 
# REMOVING the '+'
points <- data.frame(
 label = c("Low", "Mid", "High"),
 lbound=c(0,0.67,1.64),
 ubound=c(0.674, 1.64, 2.33)
 )
```

```{r}
# R normally formats floating point #s to have 7 digits
pi
100*pi
```

```{r}
# The print command allows you to specifiy the number of digits
print(pi, digits=4)
print(100*pi, digits=4)
```
```{r}
cat(pi, "\n")
cat(format(pi,digits=4), "\n")
```

```{r}
pnorm(-3:3)
print(pnorm(-3:3), digits=3)
```
```{r}
q <- seq(from=0,to=3,by=0.5)
tb1 <- data.frame(Quant=q, Lower=pnorm(-q), Upper=pnorm(q))
tb1
print(tb1,digits=2)
```
```{r}
# #You can specify the # of digits that #s have
pi
options(digits=15)
pi
```
```{r}
# This will redirect command output into a filename
cat("The answer is", answer, "\n", file="filename")
# sink function lets you redirect out cat and print output to a filename
# call sink to first start copying the data into the file. When you are
# done, call sink again to close out the file.
sink("filename")
# all output in between these will be saved
sink
```
```{r}
# Cat can redirect, BUT print cannot redirect
# but the sink command can redirect the output to a file
sink("script_output.txt")     # Redirect output to file
source("script.R")            # Run the script, capturing its output
sink()                        # Resume writing output to console
# If you're repeatedly using sink to add text to a file, add 
# append = TRUE. This tells R to save all of the redirected output
# INSTEAD of rewriting the file every time
cat(data, file="analysisReport.out")
cat(results, file="analysisRepArt.out", append=TRUE)
cat(conclusion, file="analysisReport.out", append=TRUE)
```
```{r}
# See the second cat line from the last code block ... I've capitalized the error (a instead of o)
# Hard-coding file names may result in errors. The following way allows you to write the filename
# once and re-use it as a variable name instead of needing to hardcode it each time.
# You don't need to call append=TRUE for an ongoing connection.
con <- file("analysisReport.out", "w")
cat(data, file=con)
cat(results, file=con)
cat(conclusion, file=con)
close(con)
```
```{r}
# This command shows you the contents of your working directory
list.files()
```
```{r}
# This command recursively prints files (recursive means going through subdirectories)
list.files(all.files=TRUE)
```

```{r}
help(files)
```
```{r}
# Windows uses these weird backslashes which R reads as escape characters
# Fix it by changing to forward slashes / OR use double back slashes \\
# I don't actually have this file becaues I'm writing this in Linux
# but I'm copying all of the exercises, so it gets to stay
samp <- read.csv("C:\Data\sample-data.csv")
# R leaves forward slashes alone, so you can just change em' to forward slashes
```

```{r}
# read.fwf is used to read fixed width files
records <- read.fwf("filename", widths=c(w1, w2, ..., wn))
records <- read.fwf("fixed-width.txt", widths=c(10,10,4,-1,4))
```
 
```{r}
# read.csv is for reading, you guessed it, CSV files
tbl <- read.csv("filename.txt")
# if there's no header, then set the header=FALSE
tbl <- read.csv("filename.txt", header= FALSE)
```

```{r}
# if there are no headers for the csv table
tb1 <- read.csv("table-data.csv")
tb1
# if there are no headers for the csv table
tb1 <- read.csv("table-data.csv", header=FALSE)
tb1
```

```{r}
# The write.csv function can write to a CSV file
write.csv(x, file="filename", row.names=FALSE)
# you can read a csv file directly form the web
tb1 <- read.csv("http://www.example.com/download/data.csv")

```

```{r}
# read table from Wikipedia live website
# the code wasn't working from teh book
library(XML)
url <- 'http://en.wikipedia.org/wiki/World_population'
tbls <- readHTMLTable(url)
```
```{r}
install.packages('RMySQL')
library(RMySQL)
```





