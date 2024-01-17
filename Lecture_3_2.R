# SOlving the exercise problems

n = 1e2
s <-seq(1,n,by=1)
k <-1/s

det_A_k <- numeric(n)

for(i in 1:n){
  A_k = matrix(c(
    k[i]^1,k[i]^2,k[i]^3,
    k[i]^4,k[i]^5,k[i]^6,
    k[i]^7,k[i]^8,k[i]^9
  ),
  nrow = 3,
  ncol = 3)
  
  det_A_k[i] = det(A_k)
}

plot(1:n,det_A_k,'l')


A = matrix(c(
  1,2,3,
  4,5,6,
  7,8,9
),
nrow = 3,
ncol = 3)

B = matrix(c(
  1,2,3,
  4,15,6,
  7,8,9
),
nrow = 3,
ncol = 3)

det(A)
det(B)
det(A+B)
det(A%*%B)

B = matrix(c(
  1,0,0,
  0,0,1,
  0,1,0
),
nrow = 3,
ncol = 3)


