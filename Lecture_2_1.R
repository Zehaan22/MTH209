library(mvtnorm)
library(ggplot2)

library(matlib)

## Standard deviation
sigma <- matrix(c(4,2,2,3), ncol = 2, nrow = 2) 

## 1. Centering the plot around 0
mu <- c(1,2)
n <- 1000
set.seed(123)
x <- rmvnorm(n = n, mean = mu, sigma = sigma)
d <- data.frame(x)
p2 <- ggplot(d, aes(x = X1, y = X2)) + geom_point(alpha = .5) + geom_density_2d()
p2
# ANS: The idea is that we want the mean to be zero hence 
# The transformation is y = x-mu
y <- x - t(matrix(rep(mu,n), nrow=2))
dd <- data.frame(y)
p3 <- ggplot(dd, aes(x = X1, y = X2)) + geom_point(alpha = .5) + geom_density_2d()
p3

## 2. Shape of the contours (eliptical)
# Reason: it is a plain profile of the 30d structure

## 3. Rotating by 45*
theta <- 45*pi/180
trans_mat <- matrix(
  c(cos(theta),sin(theta),
    -sin(theta),cos(theta)),
  nrow = 2
  )

y <-  x%*%trans_mat 
dd <- data.frame(y)
p3 <- ggplot(dd, aes(x = X1, y = X2)) + geom_point(alpha = .5) + geom_density_2d()
p3

## 4. Rotating by 90*
theta <- 90*pi/180
trans_mat <- matrix(
  c(cos(theta),sin(theta),
    -sin(theta),cos(theta)),
  nrow = 2
)


y <-  x%*%trans_mat 
dd <- data.frame(y)
p3 <- ggplot(dd, aes(x = X1, y = X2)) + geom_point(alpha = .5) + geom_density_2d()
p3


