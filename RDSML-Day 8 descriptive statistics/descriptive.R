#Descriptive statistics using the psych package
# to work in R more deliberately, R can insert different package to work
install.packages("psych")
to install packages type install.packages
library(psych)
#data() type on s+console, r can give you data from library()
data()
#AirPassengers
BOD
#SEARCH IT IN RIGHT SIDE ENVIONMENT PAGE
install.packages("nycflights13")
nycflights13 WRITE ON CONSOLE TO SEE DATA FULL
IF U WRITE ATACH (nycflights13::flights) DOUBLE COLON SHOWS DATA
attach(nycflights13::flights)
#to look at first 6 record using head()function WE CAN SEE FISRT 6 ROWS
head(nycflights13::flights)
summary(distance)
describe(distance)
cbind(arr_delay, dep_delay, distance)


to see 3/4 variables descriptive anaysis/ to see different column togather
# type CBILNDS and cbind () type data name

demo = cbind( arr_delay, dep_delay, distance)
demo
describe(demo)

#to understand what trimmed, med , se mean, press f1 button after description'f1' (demo)
#f1 will show description of each sign mean medin trimmed
