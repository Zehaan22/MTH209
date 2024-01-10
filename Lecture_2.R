library(matlib)
# Creating the Matrices
A = matrix(c(8,-9,7,-1,-9,-7,-25,-16,1,-3,-1,-2,10,-7,13,3),nrow = 4, ncol=4)
b = matrix(c(25,16,60,41),nrow = 4, ncol = 1)

# Note: The system is singular hence no solution is expected
solve(A,B) 
#Gives the error as expected

# We can see that rank < 4
echelon(A,b)
#Hence no solution