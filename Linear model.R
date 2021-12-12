# Linier Regression----
# Library ----
library(s20x)

# Data Load ----
Stats20x.df <- read.table("Data/STATS20x.txt", header = TRUE)
Stats20x.df[1:5, 1:5]
head(Stats20x.df)
str(Stats20x.df)

## Histogram----
hist(Stats20x.df$Exam)

## Numerical summary----
summary(Stats20x.df$Exam)
summary(Stats20x.df)

# Exam vs Test----
# page 5

## Assumption----
#page 14

# Every student is independent of every other student
# Every student, once we have made a linear adjustment for the contribution of their test mark, has a random component which comes from the same normal distribution.
# The underlying distribution of this random component is the normal distribution
# The mean of this normal distribution is 0
# The spread of this distribution is described by the variance, which is unknown.
# This is a component, that in an ideal world would not exist, so you could consider our job, as statisticians, is to reduce this as much as possible.

# Independece
# identically distributed
# Normally distributed

## Plot----
plot(Exam ~ Test, data = Stats20x.df)

trendscatter(Exam ~ Test, data = Stats20x.df)

## Linear Model----
examtest.fit <- lm(Exam ~ Test, data = Stats20x.df)
summary(examtest.fit)

## Coefficient component----

coef(examtest.fit)

# this shows the coresponds to the estimae column of the regression summary table.
# exam = 9.08 + 3.79 * test

## EOV check----
# plotting predicted values vs residual values

plot(examtest.fit, which = 1)

# it seems to confirm reasonably constant scatter (variance).
# note at the high end of exam/test score there are not that many students so this relative lack of spread is not surprising.

## Normcheck ----
normcheck(examtest.fit)

# the histogram of the residuals tells us we are okay as it closely matches a normal bell-shaped curve.

## Cooks----

cooks20x(examtest.fit)

# we may now conclude theat we can trust the output of our analysis as 


























