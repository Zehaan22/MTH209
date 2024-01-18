x1 <- c(0,0)
x2 <- c(1,-1)
x3 <- c(2,2)
x4 <- c(5,3)
x5 <- c(6,-2)
x6 <- c(4,-1)

comp_area_triangle = function(x1,x2,x3){
  area_mat = matrix(
    c(
      x1[1],x1[2],1,
      x2[1],x2[2],1,
      x3[1],x3[2],1
    ),
    nrow = 3
  )
  
  return (abs(.5 * det(area_mat)))
}

comp_area_triangle(x1,x2,x3)

comp_area_figure <- function(vertices){
  n = length(vertices)
  
  area = 0
  
  for(i in 1:n-2){
    y1 = vertices[i][[1]]
    y2 = vertices[i+1][[1]]
    y3 = vertices[i+2][[1]]
    area = area + comp_area_triangle(y1,y2,y3)
  }
  
  return (area)
}

vertices <- list(x1,x2,x3,x4,x5,x6)

comp_area_figure(vertices)

x <- c(x1[1],x2[1],x3[1],x4[1],x5[1],x6[1])
y <- c(x1[2],x2[2],x3[2],x4[2],x5[2],x6[2])


polygon(x,y)
