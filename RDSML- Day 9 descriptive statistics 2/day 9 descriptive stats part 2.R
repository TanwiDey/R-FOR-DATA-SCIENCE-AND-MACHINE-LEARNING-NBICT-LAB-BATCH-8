# Descriptive statistics using the psych package

#install.packages("psych")
library(psych)
#TO SEE R built indata set type data()
data()
AirPassengers
BOD

# Using the New York airport flight data
install.packages("nycflights13")
attach(nycflights13::flights)

# Lets look at the first 6 records using the head() function
head(nycflights13::flights)
distance
summary(distance)
describe(distance)

demo = cbind(arr_delay, dep_delay, distance)
describe(demo)

#introducing the column name () function
colnames(demo)= c('Arrival delay', 'Departure delay', 'Distance Traveled')
describe(demo)
#introducing hisogram () function() with dep delayy data
dep_delay
hist(dep_delay)

#how to group descriptive statistics
head(nycflights13::flights)
#to see data type go to help at environment page, search nycflight to see carrier data type
#write carrier  in console to see "carrier" data

summary(carrier)
# transfer carrier into factor variable to see summary of each carrier name
carrierfact = factor(carrier)
summary(carrierfact)

describeBy(distance, group = carrier)

#two levels of aggregation such as carrier and month two levels
aggregate (distance,by=list(carrier, month), FUN = sd, na.rm = TRUE)
#na. rm = true mean  become affected by  total no of participant
# missing case remove is na= no data, rm= remove
