dataset = data.frame(dose= c("D0.5", "D1", "D2"),
len= c(4.2, 10, 29.5))

mydata = read.csv()
library(ggplot2)
#Basic barplot
ggplot(data= dataset, aes(x=dose, y=len)) +
  geom_bar(stat = "identity")

ggplot(data= dataset, aes(x=dose, y=len)) +
  geom_bar(stat = "identity")+coord_flip()

#changing the width of bars
ggplot(data= dataset, aes(x=dose, y=len)) +
  geom_bar(stat = "identity", width = 0.8)
#changing colors
ggplot(data= dataset, aes(x=dose, y=len)) +
  geom_bar(stat = "identity", width = 0.8, color = "blue", fill = "white")

#minimal theme with blue fill color
ggplot(data= dataset, aes(x=dose, y=len)) +
  geom_bar(stat = "identity", width = 0.8, fill = "steelblue")+
  theme_minimal


#barplot with levels of numeric data values on top of  each bar
write vjust value to keep the bar values on top, text size =3

#outside bars, aesthetic write source of data from dataset
ggplot(data= dataset, aes(x=dose, y=len)) +
  geom_bar(stat = "identity", width = 0.8, fill = "steelblue")+
  geom_text(aes(label = len), vjust = -0.5, size = 3, color = "#000000") +
  theme_minimal()

ggplot(data= dataset, aes(x=dose, y=len)) +
  geom_bar(stat = "identity", width = 0.8, fill = "steelblue")+
  geom_text(aes(label = len), vjust = -0.5, size = 3, color = "#999999") +
  theme_minimal()


mycardata = mtcars
#barplot of count for 8 cylinder car, 6 cylinder cars etc.

ggplot(data = mycardata, aes(x= factor(cyl)))+
  geom_bar(stat = "count", width = 0.7, fill = "steelblue") +
  theme_minimal()
