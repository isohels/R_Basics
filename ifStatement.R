# normal number

#nested if else
rm(answer)
x<-rnorm(1)

if(x>1){
  answer<-"greater than"
} else{
  
  if(x>=-1){
    answer<- "between -1 and 1"
  }else{
    answer<-"less than -1"
  }
  
}

#elseif
rm(answer)
x<-rnorm(1)

if(x>1){
  answer<-"greater than"
} else if(x>=-1){
  answer<- "between -1 and 1"
  
    
  }else{
    answer<-"less than -1"
  }
  


