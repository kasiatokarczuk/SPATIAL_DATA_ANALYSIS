library(spatstat)

#Task 1
data("murchison")

plot(murchison$gold,pch=16,main="Lokalizacje złóż złota i uskoków")
plot(murchison$faults, add=TRUE, col="green",main="Lokalizacje złóż złota i uskoków") 

#Task 2
z_u <- distmap(murchison$faults)
plot(z_u)

#Task 3
plot(murchison$gold,add=TRUE,pch=16,col="orange")

#Task 4
rho <- rhohat(murchison$gold,z_u)
plot(rho)

#Task 5
z_func <- distfun(murchison$faults)
z_func
plot(z_func)

#Task 6
distance_point <- z_func(400000, 7000000)
distance_point

#Task 7
plot(z_func,main="Mapa odległości punktów")
plot(z_u,main="Mapa odległości punktów z zad.2")