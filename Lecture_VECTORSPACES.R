A = matrix(
  c(-5,-7,1,
    5,-2,3,
    -1,-4,4),
  
  nrow =3
)

B = matrix(c(57,21,3),nrow=3)

library(pracma)
library(MASS)

rref(A)
Null(A)
#> rref(A)
#[,1] [,2] [,3]
#[1,]    1    0    0
#[2,]    0    1    0
#[3,]    0    0    1

# A is full column rank and hence null space is phi

# Basis for the column space is just e1 e2 and e3

# ...  all answers are trivial 

# yes the solution is unique

## LECTURE - part 4

B = matrix(
  c(
    0,1,1,1,1,
    1,0,1,1,1,
    1,1,0,1,1,
    1,1,1,0,1,
    1,1,1,1,0
  ),
  nrow = 5
)

v = matrix(
  c(
    0,3,3,1,0
  ),
  nrow = 5
)

## THE answer is 
#> inv(B)%*%v
#       [,1]
# [1,]  1.75
# [2,] -1.25
# [3,] -1.25
# [4,]  0.75
# [5,]  1.75

