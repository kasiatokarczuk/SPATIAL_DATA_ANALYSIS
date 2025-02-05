library(spatstat)

#Task 1
data("lansing")

str(lansing)
unique(lansing)
plot(split(lansing))


#Task 2
blackoak <- split(lansing)$blackoak
maple <- split(lansing)$maple

#intensity
density_blackoak <- density(blackoak)
density_maple <- density(maple)

#visualization
plot(density_blackoak, main = "Intensywność czarnego dębu")
points(blackoak, col = "red",pch=20)

plot(density_maple, main = "Intensywność klonu")
points(maple, col = "blue",pch=20)



#Task 3
#model fitting
ppm_blackoak <- ppm(blackoak, ~1)
ppm_maple <- ppm(maple, ~1) 



#Task 4
ppm_blackoak_linear <- ppm(blackoak, ~x + y)

#visualization
plot(ppm_blackoak_linear, main = "Trend log-liniowy dla czarnego dębu")
points(blackoak)

residuals_blackoak <- residuals(ppm_blackoak_linear)
plot(residuals_blackoak, main = "Rezydua modelu dla czarnego dębu")



#Task 5
set.seed(123)

simulated_process <- rmh(ppm_blackoak_linear)

#visualization 
density_simulated <- density(simulated_process)

plot(density_simulated, main = "Intensywność procesu losowego")
points(simulated_process, col = "black")



#Task 6
diagnose.ppm(ppm_blackoak_linear,main = "Diagnostyka modelu")

