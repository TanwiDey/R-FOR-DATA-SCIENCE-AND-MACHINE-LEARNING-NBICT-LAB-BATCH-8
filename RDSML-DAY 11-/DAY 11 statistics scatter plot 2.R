library(ggplot2)
dataset = mtcars
conver
dataset$cyl = as.factor(dataset$cyl)
ggplot(dataset, aes(x= wt, y=mpg, ))+ geom_point()+
  geom_smooth(method = 1m)
#Adding regession lines based on multiple group

ggplot(dataset, aes(x=wt, y=mpg, color=cyl))+
  geom_point()+
  geom_smooth(method = lm)
#removing confidence interval
ggplot(dataset, aes(x=wt, y=mpg, color=cyl))+
  geom_point()+
  geom_smooth(method = lm, Se= FALSE)


# extending regression line
ggplot(dataset, aes(x=wt, y=mpg, color=cyl))+
  geom_point()+
  geom_smooth(method = lm, Se= FALSE, fullrange= TRUE)

#filling the color of confidence interval

ggplot(dataset, aes(x=wt, y=mpg, color=cyl))+
  geom_point()+
  geom_smooth(method = lm, aes(fill=cyl))

#changing point shape manually
ggplot(dataset, aes(x=wt, y=mpg, color=cyl, shape=cyl))+
  geom_point()+
  geom_smooth(method = lm, se= FALSE, fullrange= TRUE)+
  scale_shape_manual(values = c(3, 16, 17)) + theme(legend.position= "top")

#changing point colors manually

ggplot(dataset, aes(x=wt, y=mpg, color=cyl, shape=cyl))+
  geom_point()+
  geom_smooth(method = lm, se= FALSE, fullrange= TRUE)+ scale_shape_manual(values = c (3, 17, 19))+
  scale_color_manual(values = c('darkred','darkblue','orange'')) + 
  theme (legend.position = "top")


ggplot(dataset, aes(x=wt, y=mpg, color=cyl, shape=cyl))+
  geom_point()+ geom_smooth(method = lm, se= FALSE, fullrange= TRUE)+ 
  scale_shape_manual(values = c (3, 17, 19))+
  scale_color_manual(values = c('darkred','darkblue','orange')) + 
  theme (legend.position = "top")


#customizing scatter plot
ggplot(dataset, aes(x=wt, y=mpg, color=cyl, shape=cyl))+
  geom_point()+ geom_smooth(method = lm, se= FALSE, fullrange= TRUE)+ 
  scale_shape_manual(values = c (3, 17, 19))+
  scale_color_manual(values = c( "darkred  )) + 
  theme (legend.position = "top")

ggplot(dataset, aes(x=wt, y=mpg, color=cyl, shape=cyl))+
  geom_point()+
  geom_smooth(method=lm, se=FALSE, fullrange=TRUE)+
  scale_shape_manual(values=c(3,16,17))+
  scale_color_manual(values=c('darkblue','grey','orange'))+
  labs(title="Miles per gallon \naccording to the weight",
       x="Weight", y="Miles/Gallon")+
  theme(legend.position = "top")


ggplot(dataset, aes(x=wt, y=mpg, color=cyl, shape=cyl))+
  geom_point()+
  geom_smooth(method=lm, se=FALSE, fullrange=TRUE)+
  scale_shape_manual(values=c(3,16,17))+
  scale_color_manual(values=c('darkblue','grey','orange'))+
  theme(legend.position = "top")

ggplot(dataset, aes(x=wt, y=mpg, color=cyl, shape=cyl))+
  geom_point()+
  geom_smooth(method=lm, se=FALSE, fullrange=TRUE)+
  scale_shape_manual(values=c(3,16,17))+
  scale_color_manual(values=c('darkblue','grey','orange'))+
  labs(title="Miles per gallon \naccording to the weight",
       x="Weight", y="Miles/Gallon")+
  theme(legend.position = "top")
# Customizing themes

plot = ggplot(dataset, aes(x=wt, y=mpg, color=cyl, shape=cyl))+
  geom_point()+
  geom_smooth(method=lm, se=FALSE, fullrange=TRUE)+
  scale_shape_manual(values=c(3,16,17))+
  scale_color_manual(values=c('darkblue','grey','orange'))+
  labs(title="Miles per gallon \naccording to the weight",
       x="Weight", y="Miles/Gallon")+
  theme(legend.position = "top")

plot + theme_classic()
plot + theme_minimal()


