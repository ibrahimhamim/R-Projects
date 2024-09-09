 mydata<-read.csv(file.choose(),header=TRUE)
hist(mydata$Weight,col="green")
l_2500 <- mydata[mydata$Weight < 2500,]
ge_2500 <- mydata[mydata$Weight >= 2500,]
mean_lt_2500 <- mean(l_2500$MPG)
mean_get_2500<- mean(ge_2500$MPG)
cat("Mean lt:", mean_lt_2500,"\n")
cat("Mean_get:",mean_get_2500,"\n")
sd_lt_2500 <- sd(l_2500$MPG)
sd_get_2500 <- sd(ge_2500$MPG)
cat("SD_lt:", sd_lt_2500,"\n")
cat("SD_get:",sd_get_2500,"\n")
med_lt_2500 <- median(l_2500$MPG)
med_ge_2500 <- median(ge_2500$MPG)
cat("Median:", med_lt_2500, "\n")
cat("Median:", med_ge_2500, "\n")
boxplot(l_2500$MPG,ge_2500$MPG,names = c("Weight < 2500", "Weight >= 2500"),
        main = "Box Plot",
        ylab = "MPG",
        col = c("lightblue", "lightgreen"))


#Problem 3
mean_MPG <- mean(mydata$MPG)
sd_MPG <- sd(mydata$MPG)
cat("Mean MPG:", mean_MPG,"\n")
cat("Standard Deviation MPG:", sd_MPG,"\n")

#finding the percentage within the 1st SD range
data_1SD <-sum(mydata$MPG >= 20.370569 & mydata$MPG <= 36.713431)
cat("No. of data within 1st Standard Deviation Range:", data_1SD,"\n")
n_MPG <-length(mydata$MPG)
cat("No. of data:", n_MPG, "\n")
cat("PERCENT OF DATA WITHIN 1 SD:", (data_1SD*100)/n_MPG, "%\n")

#finding the percentage within the 2nd SD range
data_2SD <-sum(mydata$MPG >= 12.199138 & mydata$MPG <= 44.884862)
cat("No. of data within 1st Standard Deviation Range:", data_2SD,"\n")
cat("PERCENT OF DATA WITHIN 2 SD:", (data_2SD*100)/n_MPG, "%\n")

#finding the percentage within the 3rd SD range
data_3SD <-sum(mydata$MPG >= 4.027707 & mydata$MPG <= 53.056293)
cat("No. of data within 3rd Standard Deviation Range:", data_3SD,"\n")
cat("PERCENT OF DATA WITHIN 2 SD:", (data_3SD*100)/n_MPG, "%\n")







