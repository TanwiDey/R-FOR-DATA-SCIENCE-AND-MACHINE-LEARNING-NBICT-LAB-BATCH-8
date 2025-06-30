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
    c(mean = mean(x[[col]], na.rm = TRUE), sd = sd(x[[col]], na.rm = TRUE))
  }
  data_sum = ddply(data, groupnames, .fun = summary_func, varname)
  data_sum = rename(data_sum, c("mean" = varname))
  return(data_sum)
}





