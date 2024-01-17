### Practical Applications
A <- matrix(c(1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 
              0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 ,
              0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 ,
              1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 , 1 ,
              1 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 ,
              1 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 ,
              0 , 1 , 0 , 0 , 0 , 0 , 0 , 0 , 0 ,
              0 , 1 , 0 , 0 , 0 , 0 , 0 , 0 , 0 ,
              0 , 0 , 1 , 0 , 0 , 0 , 0 , 0 , 0 , 
              0 , 0 , 1 , 0 , 0 , 0 , 0 , 0 , 0 ,
              0 , 0 , 0 , 1 , 0 , 0 , 0 , 0 , 0 , 
              0 , 0 , 0 , 1 , 0 , 0 , 0 , 0 , 0 ,
              0 , 0 , 0 , 0 , 1 , 0 , 0 , 0 , 0 , 
              0 , 0 , 0 , 0 , 1 , 0 , 0 , 0 , 0 ,
              0 , 0 , 0 , 0 , 0 , 1 , 0 , 0 , 0 , 
              0 , 0 , 0 , 0 , 0 , 1 , 0 , 0 , 0 ,
              0 , 0 , 0 , 0 , 0 , 0 , 1 , 0 , 0 , 
              0 , 0 , 0 , 0 , 0 , 0 , 1 , 0 , 0 ,
              0 , 0 , 0 , 0 , 0 , 0 , 0 , 1 , 0 , 
              0 , 0 , 0 , 0 , 0 , 0 , 0 , 1 , 0 ,
              0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 1 , 
              0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 1), nrow = 11, ncol = 18, byrow = TRUE)
b <- c(1298, 1948, 465 , 605 , 451 ,  338 , 260 ,  183 ,  282 ,  127 ,  535)
library(pracma)
rref(A) # Row reduction on A


# Doing the similar row reductions on A|b
C <- cbind(A, b)
E <- rref(C)
E <- E[-11,]

# Adding a few additional constraints
G1 <- eye(8)
G2 <- matrix(rep(0, 80), 8, 10)
b2 <- c(266, 223, 140, 264, 137, 67, 130, 24)
G <- cbind(G1, G2, b2)
M <- rbind(E, G)
inv(M[,-19])

####################################

# SOlving Exercises

library(png)

img = readPNG("Tora_color.png")

new_img = img
dims= dim(img)
m=dims[0]
n=dims[1]

## Standard IMage transformations

