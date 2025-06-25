#importing dataset
dataset = read.csv("data.csv")
dataset = read.csv("data.csv")
library(ggplot2)
#creating basic histogram

ggplot(dataset, aes(x = weight)) +
  geom_histogram(color = "white")

#changing histogram plot line colors by group
#alpha value used for lightening or  deepening color of bars in histogram
ggplot(dataset, aes(x = weight, fill = sex)) +
  geom_histogram(color = "white", alpha = 0.5, position = "identity")
#position adjustment is used for overlapping points in bars
#possible values for argument positions are-
#="identity", "stack", "dodge" default values
#inter leaved histogram, Male and female histogram will be separated
#theme used to set legend name right, left or top (F= red, M= blue bars)

ggplot(dataset, aes(x = weight, fill = sex)) +
  geom_histogram(color = "white", alpha = 0.5, position = "dodge") +
  theme(legend.position = "top")

#using position dodge

ggplot(dataset, aes(x = weight, fill = sex)) +
  geom_histogram(color = "white", alpha = 0.5, position = "dodge") +
  theme(legend.position = "top")


ggplot(dataset, aes(x = weight, fill = sex)) +
  geom_histogram(color = "white", alpha = 0.5, position = "stack") +
  theme(legend.position = "dodge")

#adding mean line for female and male separately
#the plyr package used to calculate the mean weight of each group
install.packages("plyr")
library(plyr)
group_means = ddply(dataset, "sex", summarise, grp.mean = mean(weight))
group_means

#adding meanline
myplot= ggplot(dataset, aes(x = weight, fill = sex)) +
  geom_histogram(color = "white", alpha = 0.5, position = "dodge") +
  theme(legend.position = "top")

ggplot(dataset, aes(x = weight, fill = sex)) +
  geom_histogram(color = "white", alpha = 0.5, position = "dodge") +
  theme(legend.position = "top")
#adding name of fuction myplot
myplot= ggplot(dataset, aes(x = weight, fill = sex)) +
  geom_histogram(color = "white", alpha = 0.5, position = "dodge") +
  theme(legend.position = "top")
#adding meanline with "geom_vline"
myplot= ggplot(dataset, aes(x = weight, fill = sex)) +
  geom_histogram(color = "white", alpha = 0.5, position = "dodge") + 
  geom_vline(data=group_means, aes(xintercept = grp.mean, color = sex)) +
  theme(legend.position = "top")
myplot

#to use customize color my self, 
myplot + scale_color_manual(values = c("red", "blue"))+
  scale_fill_manual(values = c("green", "orange"))

#HEXADECIMAL VALUES FOR COLOR LINE AND FILL COLOR
myplot + scale_color_manual(values = c("#999999", "#E69F00"))+
  scale_fill_manual(values = c("#999999", "#E69F00"))

#USING COLOR BREWER color palettes google platete name dark2
myplot+ scale_color_brewer(palette = "Dark2" )+
  scale_fill_brewer(palette = "Dark2")

myplot+ scale_color_brewer(palette = "Paired" )+
  scale_fill_brewer(palette = "Paired")

#using grey scale
myplot+ scale_color_grey()+
  scale_fill_grey()+ theme_classic()

myplot+ scale_color_grey()+
  scale_fill_grey()+ theme_classic()
                 