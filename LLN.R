# law of large number quaetion
N<-100
x<-0
for(i in rnorm(N)){
  if(i<1 & i>-1){
    x <- x+1
    
  }

}

answer<- x/N
answer