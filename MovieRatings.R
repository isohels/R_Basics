getwd

movies<-read.csv("MovieRatings.csv")

movies
head(movies)

colnames(movies)<-c("film","genre","criticRating","AudienceRating","BudgetinMillions","Year")
head(movies)


#converting year to factor for categorical variable

movies$Year<-factor(movies$Year)
str(movies)



#--------------------------using ggplot2 no-1

ggplot(data=movies,aes(x=criticRating,y=AudienceRating,color=genre,size=BudgetinMillions))+
  geom_point()



#------------------------------creating layer

p<-ggplot(data=movies,aes(x=criticRating,y=AudienceRating,color=genre,size=BudgetinMillions))



p+geom_point()

p+geom_line()+geom_point()

p+geom_point()+geom_line()

#we are doing operation layer by layer




#----------------------------overriding aesthetics


q<-ggplot(data=movies,aes(x=criticRating,y=AudienceRating,color=genre,size=BudgetinMillions))

#changing size of dots to Critic rating
head(movies)

q+geom_point(aes(size=criticRating))


#changing color to budgetinmillioms
q+geom_point(aes(color=BudgetinMillions))

q<-ggplot(data=movies,aes(x=criticRating,y=AudienceRating,color=genre,size=BudgetinMillions))


#changing axis
q+geom_point(aes(x=BudgetinMillions))+xlab("budgteinmillion$$")


#reducing thickness of line
p+geom_line()
p+geom_line(size=1)




#-------------------using Histogram


head(movies)
s<-ggplot(data=movies,aes(x=BudgetinMillions))

s+geom_histogram(binwidth=10)


#using green as settings
s+geom_histogram(binwidth=10,fill="Green")

#using green as mapping
