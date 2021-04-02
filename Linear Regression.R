library(data.table)
library(tidyverse)

comp.data <- data.frame(fread('hw2.csv'))
str(comp.data)
summary(comp.data)

fit.data = lm(Revenue ~ Spend,data = comp.data)
summary(fit.data)
par(mfrow = c(2,2))
plot(fit.data)

predict(fit.data)

new <- data.frame(Spend = c(500000,700000))
cbind(new,predict(fit.data,new,interval = 'prediction'))

