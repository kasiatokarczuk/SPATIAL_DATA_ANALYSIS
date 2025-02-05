library(spatstat)

#Task 1
data("murchison")

#Task 2
plot(murchison$greenstone,col="green",main="Lokalizacje złóż złota,uskoki,występowanie wychodni zieleńców") 
plot(murchison$gold,pch=16,col="red",add=TRUE,main="Lokalizacje złóż złota,uskoki,występowanie wychodni zieleńców")
plot(murchison$faults, add=TRUE, col="blue", lwd=1,main="Lokalizacje złóż złota,uskoki,występowanie wychodni zieleńców") 

class(murchison$gold) #ppp-proces punktowy    
class(murchison$faults) #psp,list-linia    
class(murchison$greenstone) #owin-obszar


#Task 3
summary(murchison$gold)

lambda <- intensity(murchison$gold)
lambda


#Task 4
plot(murchison$gold, main="Rozmieszczenie złóż złota")
count <- quadratcount(murchison$gold, nx=5, ny=5)
plot(count, add=TRUE, col="blue") 


#Task 5
test <- quadrat.test(murchison$gold, nx=5, ny=5)
test

plot(test, col="red", main="Test jednorodności rozmieszczenia zbioru punktowego")


#Task 6
density <- density(murchison$gold)
density

plot(density, main="Estymator jądrowy gęstości złóż złota")


#Task 7
print(density)
summary(density)

#izolinie
contour(density, main = "Izolinie estymatora gęstości")

#3d
persp(density, main = "Mapa 3D estymatora gęstości", theta = 30, phi = 40, col = "blue", shade = 0.4)
