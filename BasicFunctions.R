?read.csv()


#how To read files from directory

#Method -1 - by using read.csv()

stats<- read.csv(file.choose())
stats



#Method-2 by manually doing it

#how to know your working directory

getwd()

#how to set working directory to another place

setwd("C:\\Users\\yrsin\\Desktop\\git_Hub\\R_Basics")     #whatever the location you want to change to

rm(stats)

stats<-read.csv("DemographicData.csv")
stats


#exploring DataSet

nrow(stats)   #gives no. of rows

ncol(stats)   #gives no of columns

head(stats)    #gives us 5 rows of data to provide us the idea of how the thing works

tail(stats)   #gives us the last 5 rows to showcase the data

str(stats)    #it provides how many variable we have used to classify our data

runif()       #it is random uniform distribution

rnorm()       #it is random normal distribution

summary(stats)    #provide us the summary of our data sets



#using the $ sign

stats

head(stats)

stats[4,"Birth.rate"]

stats[1,"Country.Name"]


stats$Income.Group

stats$Income.Group[2]


stats[,"Internet.users"]

stats$Internet.users[2]


levels(stats$Country.Code)



#-------------------------------------Basic operation with a data frame

stats[1:10,]
stats[1:20,]
stats[3:9,]

stats[c(4,100)]


stats[1,1]
is.data.frame(stats[1,1])


stats[1,]
is.data.frame(stats[1,])

# for columns
stats [,1]
is.data.frame(stats[,1])


stats[,1,drop=F]
is.data.frame(stats[,1,drop=F])



#multiply columns and adding a new column
stats$MyCalc<-stats$Birth.rate*stats$Internet.users
stats


#test of knowledge

stats$xyz<-1:5
stats


stats$xyz<-1:4
# beacuse 4 is not multiple of 195 which is the whole length of data frame so R cannot replicate it.

head(stats, n=12)



#remove row or column

stats$MyCalc<-NULL
stats

stats$xyz<-NULL
stats




#----------------------------------------Filtering data Framw

stats$Internet.users


stats[stats$Internet.users<2,]   # using filter for internet user which are less than 2


stats[stats$Birth.rate>40 & stats$Internet.users<2,]    #used 2 filters


levels(stats$Income.Group)


stats[stats$Income.Group=="Low income",]


#------------------------------finding information about malta

stats[stats$Country.Name=="Malta",]
