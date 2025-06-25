

# Minimal theme with blue fill color
ggplot(data = dataset, aes(x = dose, y = len)) + 
  geom_bar(stat = "identity", fill = "steelblue") +
  theme_minimal()

# Barplot with labels
# Outeside bars
ggplot(data = dataset, aes(x = dose, y = len)) + 
  geom_bar(stat = "identity", fill = "steelblue") +
  geom_text(aes(label = len), vjust = -0.5, size = 3, color = "#9F9F9F") +
  theme_minimal()

# Inside bars
ggplot(data = dataset, aes(x = dose, y = len)) + 
  geom_bar(stat = "identity", fill = "steelblue") +
  geom_text(aes(label = len), vjust = 1.6, size = 3, color = "white") +
  theme_minimal()

myCarData = mtcars
# Barplot of counts
# To make a barplot of counts, we will use mtcars dataset

ggplot(data = myCarData, aes(x = factor(cyl))) +
  geom_bar(stat = "count", width = 0.7, fill = "steelblue") +
  theme_minimal()

#changing barplot line color by group
print(dataset)
ggplot(dataset, aes(x= dose, y=len, color=dose))+
  geom_bar(stat = "identity", fill="white")

#using custom color palettes

ggplot(dataset, aes(x= dose, y=len, color=dose))+
  geom_bar(stat = "identity", fill="white") +
  scale_color_manual(values = c("blue", "red", "#27cc53"))

#hexadecimal color code in google = color picker serach
#using brewer color palettes = google color brewer palettes search
ggplot(dataset, aes(x= dose, y=len, color=dose))+
  geom_bar(stat = "identity", fill="white") +
  scale_color_brewer()

ggplot(dataset, aes(x= dose, y=len, color=dose))+
  geom_bar(stat = "identity", fill="white") +
  scale_color_brewer(palettes = "dark2")

ggplot(dataset, aes(x= dose, y=len, color=dose))+
  geom_bar(stat = "identity", fill="white") +
  scale_color_grey()


#changing fill color
ggplot(dataset, aes(x= dose, y=len, fill = dose))+
  geom_bar(stat = "identity") + theme_minimal()

p = ggplot(dataset, aes(x= dose, y=len, fill = dose))+
  geom_bar(stat = "identity") + theme_minimal()

p +scale_fill_manual(values =  c("blue", "red", "#27cc53"))

p + scale_fill_brewer(palette = "Dark2")
p + scale_fill_grey()

ggplot(dataset, aes(x= dose, y=len, fill = dose))+
  geom_bar(stat = "identity", color ="black") +
  scale_color_manual(values = c("blue", "red", "#27cc53"))

#changing legend position

ggplot(dataset, aes(x= dose, y=len, fill = dose))+
  geom_bar(stat = "identity", color ="black") +
  scale_color_manual(values = c("blue", "red", "#27cc53")) +
  theme(legend.position = "top")

ggplot(dataset, aes(x= dose, y=len, fill = dose))+
  geom_bar(stat = "identity", color ="black") +
  scale_color_manual(values = c("blue", "red", "#27cc53")) +
  theme(legend.position = "none")
#github 

#learn more on GITHUB from free courses....


