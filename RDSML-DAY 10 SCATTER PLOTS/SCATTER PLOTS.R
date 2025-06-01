install.packages ("ggplot2")
library("ggplot2")
dataset = mtcars
view(dataset)
#gererating basic scatter plot, x,y axis shoed by aesthetic function 

ggplot(dataset, aes(x = wt, y= mpg))+ geom_point()

#changing the point size and shape

ggplot(dataset, aes(x = wt, y= mpg))+ 
  geom_point(size = 2, shape = 15)
             
#adding regression line

ggplot(dataset, aes(x = wt, y= mpg))+ geom_point(size = 2, shape = 15) + geom_smooth()

ggplot(dataset, aes(x = wt, y= mpg))+ 
  geom_point(size = 2, shape = 15, color = 'blue')+ geom_smooth(method = 1m, linetype = "dashed", color = "darkred",  fill = "blue")
