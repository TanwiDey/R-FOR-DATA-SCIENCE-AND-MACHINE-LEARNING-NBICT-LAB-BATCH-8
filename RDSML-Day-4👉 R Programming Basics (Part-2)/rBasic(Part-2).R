# Data Types in R
# 1. Numeric- integer(whole number a)/ Floating Point (decimal data, b)
# 2.String/ or character data type - "Tanwi 
# name variable data type know by class
# to know data type code- class(a)/ shows data type numeric
# 3. Logical ()


a = 11
b = 7.19
class (a)
class (b)
name= "Tanwi Dey"

print (name)
class(name)

name= 'Tanwi Dey'
print (name)
class(name)

c = '52'
print (c +9)
print (a+9)
class(c)

#logical data type - TRUE , FALSE (or T, F, r recognize Capital letter)
a>b 
#showing as true in console
print (a>b)
a<b
x= 19
#19 is assign to x
#but does not mean x equal to 19 x=19
y= 22-3
print(x==y)
print (x!=y)
#!= means not equal to
y>=x
#logical data shows false or true data type
#logical operators in R
#comparing truw event to true event or true event with false event comppare
4==4 && 5==5
#both side both event is true 4=4, right side 5==5
#only if both side have true event then && logical operator says it is true, all other case false
#logical operators & says it is false if only one side or both side have false
# && logical operator only says it is true when both side have true event, && says it is true
#or ||ogical operator says it is false only when both side have false data, in all other case it says true
# || or operator it is opposite to && operator
x==y || x!=y
#x!=y or x==y
x>y || x<y
x==y || x>y
#simple mathematical operator in R
z= 6+9-8*2/3
print(z)
z= 6+9-8*(2/3)
print(z)

w= 4+3-3*2/3
print(w)
#to write power of value
y=4^2
print(y)
y=4^3
print(y)
11/5
#to see vhagses write double percent %%
11%%5
11 %/% 5
  