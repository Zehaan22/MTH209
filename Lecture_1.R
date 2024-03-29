# Creating the matrix
ns = list(month.abb,month.abb)

dat = matrix(0, nrow = 12,ncol = 12,
             dimnames = ns)
dat[,1] = c(1,1,1,3,2,2,2,0,0,1,0,0)
dat[,2] = c(0,0,0,0,1,0,0,0,0,1,1,1)
dat[,3] = c(0,0,0,0,1,0,0,0,0,1,1,1)
dat[,4] = c(0,0,0,0,1,0,0,0,0,1,1,1)
dat[,5] = c(0,0,0,0,1,0,0,0,0,1,1,1)
dat[,6] = c(0,0,0,0,1,0,0,0,0,1,1,1)
dat[,7] = c(0,0,0,0,1,0,0,0,0,1,1,1)
dat[,8] = c(0,0,0,0,1,0,0,0,0,1,1,1)
dat[,9] = c(0,0,0,0,1,0,0,0,0,1,1,1)
dat[,10] = c(0,0,0,0,1,0,0,0,0,1,1,1)
dat[,11] = c(0,0,0,0,1,0,0,0,0,1,1,1)
dat[,12] = c(0,0,0,0,1,0,0,0,0,1,1,1)


# 1
dat[3:9,8]

# 2
dat[3:9,8:12]

# 3
dat[3:9,c(5,7,12)]