#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution


# 1-first we will calculate profit for each month

#simply subtract

profit <- revenue - expenses

print(profit)

#2-profit after tax of 30% for each month

#calculate tax

tax<- round(profit*0.3,digits=2)

#rounding of the values

profitAfterTax <- profit-tax


#3-calculating profit margin for each month which is given by profit after tax divided by revenue

profitMargin<-round(profitAfterTax/revenue,2)*100
print(profitMargin)


#4-calculating which month is good
#when the  profit after the tax was greater than the mean of the year

#5-calculating mean for the year
MeanOfYear<-mean(profitAfterTax)
print(MeanOfYear)

goodMonths<- profitAfterTax>MeanOfYear
print(goodMonths)

#6-calculating Bad Months
#when the profit after the tax was less than the mean of year

badMonths<- profitAfterTax<MeanOfYear
print(badMonths)

#7- the best month
#where the profit after tax was max for the year
maximum<-max(profitAfterTax)
print(maximum)

bestMonth<-profitAfterTax==maximum
print(bestMonth)


#8- worst month
#where the profit after tax was min for the year

minimum<-min(profitAfterTax)
print(minimum)

worstMonth<-profitAfterTax==minimum
print(worstMonth)



#units of thousands
revenue.1000<-round(revenue/1000)
expenses.1000<-round(expenses/1000)
profit.1000<-round(profit/1000)
profitAfterTax.1000<-round(profitAfterTax/1000)


#output
revenue.1000
expenses.1000
profit.1000
profitAfterTax.1000
profitMargin
goodMonths
badMonths
bestMonth
worstMonth



#matrices

m<-rbind(
  
  revenue.1000,
  expenses.1000,
  profit.1000,
  profitAfterTax.1000,
  profitMargin,
  goodMonths,
  badMonths,
  bestMonth,
  worstMonth
  
)

m
