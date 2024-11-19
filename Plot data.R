#load data
training<-read.csv("test.csv", header = TRUE)

# Dependent variable
dependent_var <- training[["mobile_wt"]]

# Histogram with normal curve
hist(dependent_var,
     main = "Histogram of mobile_wt with Normal Curve",
     xlab = "mobile_wt",
     col = "lightblue",
     border = "black",
     prob = TRUE)

mean_val <- mean(dependent_var, na.rm = TRUE)
sd_val <- sd(dependent_var, na.rm = TRUE)
curve(dnorm(x, mean = mean_val, sd = sd_val),
      col = "red", lwd = 2, add = TRUE)

plot(training[["mobile_wt"]], training[["battery_power"]],
         xlab = "mobile_wt",
         ylab = "battery_power",
         main = paste("Plot of battery_power against mobile_wt"), type = "p", pch = 19,
         cex = 1.5, col = "black")
    
#linear trend line
model <- lm(training[["battery_power"]] ~ training[["mobile_wt"]])
abline(model, col = "blue", lwd = 2)
    
grid()


