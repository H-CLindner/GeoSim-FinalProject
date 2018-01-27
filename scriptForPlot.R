library(plyr)

setwd("C:/Users/hans-/Documents/Master/1.Semester/Geosimulation/FinalPresentation")

numbers = read.table("result.txt")

numbersTransposed = data.frame(t(numbers))

numbersTransposed = numbersTransposed[rowSums(numbersTransposed)!=0,]

numbersReady = data.frame(numbersTransposed)

numbersReady = numbersReady[order(numbersReady$numbersTransposed),]

numbersOrdered = data.frame(numbersReady)

numbersAggregated = count(numbersOrdered$numbersReady)

colnames(numbersAggregated) = c("value", "sum")

numbersAggregated = numbersAggregated[, c(2,1)]

numbersLog = log(numbersAggregated, 2)

plot(numbersLog)
