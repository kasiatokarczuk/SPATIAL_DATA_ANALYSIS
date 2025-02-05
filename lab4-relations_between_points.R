library(spatstat)

window <- disc(radius=10)

#Task 1
#a
intensity_poisson <- 0.25  
p_poisson <- rpoispp(lambda = intensity_poisson, win = window)


#b
intensity_regular <- 0.40
p_regular <- rStrauss(beta=intensity_regular,gamma=0.5,R=0.5,W = window)

#c
kappa <- 0.15  # intensywnosc procesu rodzicielskiego
mu <- 4      #srednia liczba punktow potomnych  
p_cluster <- rMatClust(kappa = kappa, r = 1, mu = mu, win = window)


par(mfrow = c(1, 3))
plot(p_poisson, main = "Poisson Process")
plot(p_regular, main = "Strauss Process")
plot(p_cluster, main = "Matern Cluster Process")



#Task 2
nnd_poisson <- nndist(p_poisson)
nnd_regular <- nndist(p_regular)
nnd_cluster <- nndist(p_cluster)

par(mfrow = c(1, 3))
hist(nnd_poisson)
hist(nnd_regular) 
hist(nnd_cluster)



#Task 3
G_poisson <- Gest(p_poisson)
G_regular <- Gest(p_regular)
G_cluster <- Gest(p_cluster)


par(mfrow = c(1, 3))
plot(G_poisson)
plot(G_regular)
plot(G_cluster)



#Task 4
K_poisson <- Kest(p_poisson, correction = "border")
K_regular <- Kest(p_regular, correction = "border")
K_cluster <- Kest(p_cluster, correction = "border")

par(mfrow = c(1, 3))
plot(K_poisson)
plot(K_regular)
plot(K_cluster)



#Task 5
distmap_poisson <- distmap(p_poisson)
distmap_regular <- distmap(p_regular)
distmap_cluster <- distmap(p_cluster)

par(mfrow = c(1, 3))
plot(distmap_poisson)
plot(distmap_regular)
plot(distmap_cluster)
