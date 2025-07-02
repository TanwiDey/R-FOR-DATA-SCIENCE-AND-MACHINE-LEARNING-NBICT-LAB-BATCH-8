ToothGrowth
#variable creating, importing data set
tooth_data = ToothGrowth

#creating a function for summarizing data based on
#based on grouping
sum = function() {adding values and returning the result}
#this will not work if you write
sum (23,12,25) 
sum = function()
#packages in R are functions, some one creating by telling which function will work how
#which function we want we have to install that packages
#library have these inbuilt packages in library
  
data_summary<- function(data, variablename,groupsname)
library(plyr)
#if we need library inside a function we write require()

require(plyr)
summary_func = function(x, col){
  c(mean = mean(x[[col]]), na.rm = TRUE), sd = sd(x [[col]], na.rm = TRUE))
}
data_sum = ddply(data, groupsnames, .fun = summary_func, varname )
data_sum = rename(data_sum, c("mean" = varname))





data_summary = function(data, varname, groupnames){
  require(plyr)
  
  summary_func = function(x, col){
    c(mean = mean(x[[col]], na.rm = TRUE), sd = sd(x[[col]], na.rm = TRUE))}
  
  all_summary = ddply(data, groupnames, .fun = summary_func, varname)
  data_sum = rename(data_sum, c("mean" = varname))
  return(data_sum)}

#group names grouping variable indicate, supply and dose
#inside the function, if we need any package, we write require(package name=plyr)
#second bracket er vitore kaj called function body
##summary _func= function inside fuction is nested function
#x=dataset, col=on which column we calcuate mean and standar deviation

#c(mean = mean(x[[col]], na.rm = TRUE), sd = sd(x[[col]], na.rm = TRUE))
}
#mean = mean, call mean fucntion then call on which column=col,
#na.rm= true, missing data in row will be removed
#sd= work for sd deviation
#data_sum = a new variable,
 #ddply is package, need data, groups name, function inside ddply= summary_func

#varname = variable name like lenght weight etc., grouping variable supp and dose =dependent variables
data_summary = function(data, varname, groupnames){
  require(plyr)
  
  summary_func = function(x, col){
    c(mean = mean(x[[col]], na.rm = TRUE), sd = sd(x[[col]], na.rm = TRUE))}
  
  all_summary = ddply(data, groupnames, .fun = summary_func, varname)
  data_sum = rename(data_sum, c("mean" = varname))
  return(data_sum)}


data_summary = function(data, varname, groupnames){
  require(plyr)
  
  summary_func = function(x, col){
    c(mean = mean(x[[col]]), sd = sd(x[[col]]))
  }
  
  all_summary = ddply(data, groupnames, .fun = summary_func, varname)
  data_sum = rename(all_summary, c("mean" = varname))
  return(data_sum)
}
d_summary = data_summary(tooth_data, varname= "len", groupnames = c("supp", "dose"))

#dose is categorical column, factor variable dose
#you have tellR, dose is a factor variable
#converting dose to a factor variabled_
d_summary$dose = as.factor(d_summary$dose)
class(d_summary$dose)
library(ggplot2)
ggplot(d_summary, aes(x= dose, y = len, fill = supp)) + 
  geom_bar(stat = "identity", position = position_dodge())
#entering error bar, sd means shows a mean bar maximun how muchit can go, and minimum how much it can go
#errorbar 13+_4.0 

ggplot(d_summary, aes(x= dose, y = len, fill = supp)) + 
  geom_bar(stat = "identity", position = position_dodge())+
  geom_errorbar( aes (ymin = len - sd,ymax = len + sd ), width = 0.2, position = position_dodge(.9)) +
  theme_minimal()



