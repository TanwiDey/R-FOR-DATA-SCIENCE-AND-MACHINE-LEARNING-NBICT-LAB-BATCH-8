mydata = ToothGrowth

mydata$dose = as.factor(mydata$dose)

library(ggplot2)

ggplot(mydata, aes(x = dose, y =len)) + 
  geom_boxplot()

ggplot(mydata, aes(x = dose, y =len)) + 
  geom_boxplot() + 
  coord_flip()

#changing the box plot colors by groups
ggplot(mydata, aes(x = dose, y =len)) + 
  geom_boxplot(outlier.color = "red" , outlier.shape = "8", outlier.size = "3" ) + 
  scale_x_discrete(limits =c("2")) 


#changing the items order
ggplot(mydata, aes(x = dose, y =len, color = dose)) + 
  geom_boxplot() + 
  scale_x_discrete(limit = c("2", "0.5", "1"))


#boxplot with multiple groups
ggplot(mydata, aes(x = dose, y =len, fill = supp)) + 
  geom_boxplot ()

#using dodge to distance one boxplot from other for each groups
ggplot(mydata, aes(x = dose, y =len, fill = supp)) + 
  geom_boxplot (position = position_dodge (1.5))



