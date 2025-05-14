#Putting the summary in order
birth_month=c("jan", "Dec", "Apr", "Aug", "Mra", "June")
birth_month_fac= factor(birth_month)
summary(birth_month_fac)
#under the factor,we can add extra parameter like order to get months serially

birth_month_fac= factor(birth_month, ordered = TRUE, levels= c("Jan","Feb", "Mra", "Apr", "June", "Aug")) 
summary
a= c(2,4,7)
b = c("Red", "Green", "Blue")
c = "Welcome!"
my_list = list(a, b, c)
my_list

# mylist will show all the inserted data type
# naming the list items, we can name list materials such as a= pieces

my_list = list(Pieces = a, Colors =b , Message = c)
my_list

#calling any items from list one by one/ specific data structure with third bracket[]or doller sign
#calling specific items from the data structure


my_list[1]
my_list[a,b,c]
my_list["Colors"]
my_list$Message
my_list$Colors[5]
my_list$Colors[2]
