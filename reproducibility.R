library(tidyr)
library(ggplot2)
library(dplyr)


head(cars)
summary(cars)

plot(cars)
ggplot(data = cars) + geom_point(aes(cars$speed, cars$dist)) 
ggplot(data = cars) + geom_point(aes(cars$speed, cars$dist, colour="red")) 
ggplot(data = cars) + geom_point(aes(cars$speed, cars$dist, color=cars$speed)) 
ggplot(data = cars) + geom_point(aes(cars$speed, cars$dist, color=cars$dist)) 

   
       
ggplot(cars, aes(cars$speed, cars$dist)) + 
  geom_point() +
  geom_smooth() +
  labs(x = "speed", y = "distance", title="Relacion distancia de frenado respecto velocidad")
        






summary(airquality)
head(mpg)
head(airquality)

airquality %>% 
  ggplot(aes(Ozone)) + 
  geom_bar() 

airquality %>% 
  ggplot(aes(Solar.R)) + 
  geom_bar() 

airquality %>% 
  ggplot(aes(Wind)) + 
  geom_bar() 

airquality %>% 
  ggplot(aes(x=Temp, y=x)) + 
  geom_smooth()

library(purrr)
library(tidyr)
library(ggplot2)

airquality %>% select(1:4) %>%
  gather() %>% 
  ggplot(aes(value)) +
  facet_wrap(~ key, scales = "free") +
  geom_bar() 


airquality %>% select(1:4) %>%
  gather(-Ozone, key = "var", value = "value") %>%
  ggplot(aes(x = value, y = Ozone)) +
  geom_point() +
  stat_smooth() +
  facet_wrap(~ var, scales = "free") +
  theme_bw()

library(purrr)
library(tidyr)
library(ggplot2)

airquality %>% 
  gather(-Ozone, key = "var", value = "value") %>%
  ggplot(aes(x = value, y = Ozone)) +
  facet_wrap(~ var, scales = "free") +
  geom_bar(stat = "identity")+
  geom_smooth(method="lm")


mtcars %>%
  gather(-mpg, key = "var", value = "value") %>%
  ggplot(aes(x = value, y = mpg)) +
  geom_bar(stat = "identity") +
  stat_smooth() +
  facet_wrap(~ var, scales = "free") +
  theme_bw()


require(graphics)
pairs(airquality, panel = panel.smooth, main = "airquality data")
