#Vectors in R
# Creating vector using C() command

studen.height= c(60, 69, 55,62)
studen.height

#checking the class of the vector student.height

class(studen.height)
#is.numeric() function can be used to check data type

is.numeric(studen.height)
# R automatically convert numeric to text, when you have a text item in the vector
vector b is a vector having data numeric and character text both =c(5, 8, 2, "TD")

b = c(5,8,2, 'TD')
is.numeric(b)
is.character(b)

# all number has been transfer to character/textb data type
#we can convert data types which are vector based data type
# numeric to character always but character to numeric conversion not always possible

a <-c(1,2,3,4,5)
class(a)
is.numeric(a)
# to convert numeric to character type as.character(a)

as.character(a)
a= as.character(a)
a
class(a)

#logical operators True or False when convertered,  TRUE converts to =1,FALSE TO 0

d= c(TRUE, FALSE, FALSE, TRUE, FALSE)

d= as.numeric(d)
d
#converting numeric to logical (1 or any number other than 
#0 converts to TRUE, 0 converts to FALSE)
d
as.logical(d)

e=c(1,0,0,1,0, 23, -7, 0)
e=as.logical(e)
e
#creating sequential vetors,likely a vector start from 1 to 10
my_seq=c(1:10)
my_seq=c(1:100)
my_seq
my_seq2=c(1:50, 12, 24,56, 23, 70:100)
my_seq2
# item count is easier with [] this item number
#creating a sequectial vector using code "seq' function
#if we write seq function we won't use : but "," comma

new_seq=c(seq(1,10))
new_seq
# sequence in a steps of 3,such as 3,6,9,12 , we can use code/ function "by"
new_seq= c(seq(1,10, by=3))
new_seq
#vector can have character , numeric , logical etc any data  type
name=c("Elias, mafhuja, AFRAF, CHAITY")
name
class(name)

name[3]
name=c("Elias", "mafhuja", "AFRAF", "CHAITY")
name[3]
name[3:4]

#assiging names to vector values such as 4=a,5=b
my_values=c(4, 7, 9, 11)
names((my_values)=c ("a", "b", "c", "d")
names(my_values) = c ("a", "b", "c", "d")
my_values      
