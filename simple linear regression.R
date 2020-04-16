# the data is from Introduction to Linear Regression Analysis
library('MPV')
data("table.b1")
lm=lm(y~x8,data = table.b1)
summary(lm)
par(mfcol=c(2,2))
plot(lm)
       
