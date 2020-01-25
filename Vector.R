#creating a vector

MyFirstVector <- c(3,45,56,732)
MyFirstVector


#checking numeric value

is.numeric(MyFirstVector)

#checking  whether value is integer

is.integer(MyFirstVector)


#checking double
is.double(MyFirstVector)


#checking all the conditions
V2<-c(3L,12L,243L,0L)
is.numeric(V2)
is.character(V2)
is.double(V2)


#checking all the conditions
v3<-c("c","rahul",7)
is.character(v3)
is.numeric(v3)
v3
#a data type can only have same type of data elments


#seq

seq()  #similar to ':'

seq(1,15)
#similar to this
1:15

seq(1:15)

#providing step
seq(1,15,2)

# printing with step size of 4

z<- seq(1,15,4)

#replicate

rep(3,50)

#replicating character
rep("a",5)

#replicating vectors
x<-c(1,2,3)
y<- rep(x,3)