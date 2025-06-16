#importing the data set, write read.csv function (dataset name for excel file)
dataset = read.csv("data.csv")

library(ggplot2)

#creating a basic histogram using ggplot2, 
#using dataset saved in excel file in pc

ggplot(dataset, aes(x = weight))+
  geom_histogram()
#changing the width of bins (each bar is bin)
#write geom_histogram(binwidth bin function with color name)

ggplot(dataset, aes(x = weight))+
  geom_histogram(binwidth = 0.5, color = "black")

#changing colors()
ggplot(dataset, aes(x = weight))+
  geom_histogram(binwidth = 0.5, color = "black", fill = "blue")

ggplot(dataset, aes(x = weight))+
  geom_histogram(binwidth = 0.5, color = "black", fill = "lightblue")

#bar diagram time vs full number not in decimal, histogram work with decimal too

#adding mean line

myplot = ggplot(dataset, aes(x = weight))+
  geom_histogram(color = "black", fill = "lightblue")

myplot
myplot + geom_vline(aes(xintercept= mean(weight)),
                    color = "blue", linetype= "dashed", size= 1)


myplot = ggplot(dataset, aes(x = weight))+
  geom_histogram(aes(y = after_stat(density)), color = "black", fill = "white")+
  geom_density()


#creating the density histogram
ggplot(dataset, aes(x = weight))+
  geom_histogram(aes(y = after_stat(density)), color = "black", fill = "white")+
  geom_density(fill = "blue", alpha = .2)

#changing bin broader color, the density histogram

