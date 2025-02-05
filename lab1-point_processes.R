library(spatstat)

#Task 1,2
x<-runif(200,0,1)
y<-runif(200,0,2)
points<-plot(x,y,asp=1) 
rect(0, 0, 1, 2, border="red", lwd=2)

points <- data.frame(x,y)

#Task 3
r_squared<-runif(300,0,100)
angle<-runif(300,0,2*pi)

x<-sqrt(r_squared)*cos(angle)
y<-sqrt(r_squared)*sin(angle)
plot(x, y, asp=1)

#Task 4
circle <- disc(radius = 10)

plot(circle)
points(x, y, pch=19, col="green")

#Task 5
planar_point_pattern<-ppp(x,y,window=circle)
test<-quadrat.test(planar_point_pattern)
plot(test)

#Task 6
circle <- disc(radius = 10)
circle_pow<-pi*10*10
lambda<-500/circle_pow
poisson<-rpoispp(lambda,win=circle)
plot(poisson)


