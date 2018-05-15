# This is an R Markdown file, BUT the completed functions aren't displaying because I'd need to push
# the HTML generated file for that ... I REALLY need to learn how to use GIT!
---
title: "Some_Basics"
author: "David_Halvorsen"
date: "May 15, 2018"
output: html_document
---
R Cookbook Chapter 2: Some Basics
```{r}
# Printing is easy
pi
sqrt(2)
```
```{r}
# R print knows how to format any R value for printing:
print(matrix(c(1,2,3,4), 2, 2))
print(list("a", "b", "c"))
```
```{r}
# print can't handle printing more than 1 thing / line
print("The zero occurs at", 2*pi, "radians.")
```

```{r}
# cat function lets you print multiple items/line
cat("The zero occurs at", 2*pi, "radians.", "/n")
```

```{r}
fib <- c(0,1,1,2,3,4,8,13,21,34)
fib
cat("The first few Fibonacci numbers are:", fib, "...\n")
```

```{r}
# cat can't print compound data structures (uncomment cat to see the error message)
print(list("a", "b", "c"))
#cat(list("a","b","c"))
```

```{r} 
# You don't need to initialize variables before using them
x <- 3
y <- 4
z <- sqrt(x^2 + y^2)
print(z)
# ls() prints the current working variables
ls()
```

```{r}
# R is a dynamically typed language, so you can change variable names whenever
x <- 3
x <-c("fee", "fie", "foe", "fum")
print(x)
```
```{r}
# You can use equals and backwards -> assignment, but those forms aren't recommended #confusion
foo = 3
print(foo)
5 -> fum
print (fum)
```

```{r}
x <- 10
y <- 50
z <- c("three", "blind", "mice")
f <- function(n,p) sqrt(p*(1-p)/n)
# ls() displays objects in your workspace
ls()
```
```{r}
print("ls() with everything")
ls()
#rm(list = ls())
print("")
print("ls() after clearing workspace")
ls()
```
```{r}
# ls.str() tells you something about each variable
ls.str()
```

```{r}
# ls() won't naturally print hidden (. prefix) files
.hidvar <- 10
ls()
# setting all.names = TRUE will print (. prefix) files
ls(all.names=TRUE)
```
```{r}
# workspace can quickly get messy
# rm() gets rid of variables
x <- 2*pi
x
rm(x)
x
```
```{r}
ls()
# remove the ENTIRE workspace list at once:
rm(list=ls())
ls()
```

```{r}
# create a vector
c(1,1,2,3,5,8,13,21)
c(1*pi, 2*pi, 3*pi, 4*pi)
c("Everyone", "loves", "stats.")
c(TRUE,TRUE,FALSE,TRUE)
```
```{r}
# If vectors are supplied to c(), then those vectors are pooled
v1 <- c(1,2,3)
v2 <- c(4,5,6)
c(v1,v2)
```
```{r}
# mixed element vector case where R converts the numbers to strings to match
v1 <- c(1,2,3)
v3 <- c("A","B","C")
c(v1,v3)
```
```{r}
# mode can tell you what data type you're working with
mode(3.1415)
mode("foo")
```
```{r}
# some statistics
x <- c(0,1,1,2,3,5,8,13,21,24)
mean(x)
median(x)
sd(x)
var(x)

```
```{r}
# cor is correlation
# cov is covariance
x <-c(0,1,1,2,3,5,8,13,21,34)
y <- log(x+1)
cor(x,y)
cov(x,y)
```
```{r}
# you can't run stats on empty (NA) values
x <- c(0,1,1,2,3,NA)
mean(x)
sd(x)

```
```{r}
# get rid of the NA values and it'll work fine
x <- c(0,1,1,2,3,NA)
mean(x)
sd(x,na.rm=TRUE)
```
```{r}
x <- c(0,1,1,2,3,NA)
mean(x, na.rm=TRUE)
sd(x, na.rm=TRUE)
```

```{r}
# basic statistics for a dataframe
# I couldn't get the provided dataframe to work
#str(mtcars)
#mtcars
#y <- mtcars[1:3]
#z <- data.frame(y)
#mean (z)

```

```{r}
# Here are a few ways to create a sequence
1:5
seq(from=1, to=5,by=2)
rep(1,times=5)
9:0
seq(from=0, to=20, length.out=5)
```

```{r}
# comparison operators
a <- 3
a == pi
a != pi
a < pi
a > pi
a <= pi
a >= pi
```
```{r}
# R can compare ENTIRE vectors at once
v <- c(3, pi, 4)
w <- c(pi, pi, pi)
v == w
v != w
v < w
v <= w
v > w
v >= w
```
```{r}
fib <- c(0,1,1,2,3,5,8,13,21,34)
fib
# The first element is 1 .... Yay! I don't like Python indexing :D
fib[1]
fib[2]
fib[3]
fib[4]
fib[5]
fib[1:3]
fib[4:9]
# negative index means DO NOT include that value
fib[-1]
fib[-(1:3)]
```
```{r}
# Everywhere that logical value is TRUE the # will be printed
fib < 10
fib[fib <10]
fib %% 2 == 0
fib[fib %% 2 == 0]
```

```{r}
# vector names is given the years component
years <- c(1960, 1964, 1976, 1994)
names(years) <- c("Kennedy", "Johnson", "Carter", "Clinton")
years
```
```{r}
years["Carter"]
years["Clinton"]
years[c("Carter", "Clinton")]
```

```{r}
# You can apply mathematical operations to chained variables
v <- c(11,12,13,14,15)
w <- c(1,2,3,4,5)
v+w
v-w
v*w
v/w
w^v
```
```{r}
# if you've got a vector and a scalar, the scalar will be applied to each element of the vector
w
w+2
w-2
w*2
w/2
w^2
2^w
```
```{r}
# recenter data by subtracting the mean from each point
w
mean(w)
w - mean(w)
```

```{r}
w
sqrt(w)
log(w)
sin(w)
```

```{r}
# demonstration of R functions
cv <- function(x) sd(x)/mean(x)
cv(1:10)
```

```{r}
# Once a function is stated, you can use it wherever
cv
thing <- list(1:15)
lapply(thing, cv)
```
```{r}
gcd <- function(a,b) {
  if (b == 0) return(a)
  else return(gcd(b, a %% b))
}
```





