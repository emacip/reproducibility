library(ggplot2)


summary(cars)
head(cars)

plot(cars)
ggplot(data = cars) + geom_point(aes(cars$speed, cars$dist)) 
ggplot(data = cars) + geom_point(aes(cars$speed, cars$dist), color=cars$speed) 
ggplot(data = cars) + geom_point(aes(cars$speed, cars$dist), color=cars$dist) 

   
       
ggplot(cars, aes(cars$speed, cars$dist)) +
         geom_point() +
         geom_smooth()




summary(airquality)
head(airquality)
