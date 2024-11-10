#load data
training<-read.csv("Data_csv/train.csv", header = TRUE)

# histogram for all columns
for (col_name in names(training)) {
  if (col_name != "mobile_wt") {
    
    hist(training[[col_name]],
         main = paste("Histogram of", col_name),
         xlab = col_name,
         col = "lightblue",
         border = "black")
  }
}

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


#plots
for (col_name in names(training)) {
  if (col_name != "mobile_wt") {
    
    plot(training[["mobile_wt"]], training[[col_name]],
         xlab = "mobile_wt",
         ylab = col_name,
         main = paste("Plot of", col_name, "against mobile_wt"), type = "p", pch = 19,
         cex = 1.5, col = "black")
    
#linear trend line
    model <- lm(training[[col_name]] ~ training[["mobile_wt"]])
    abline(model, col = "blue", lwd = 2)
    
    grid()
  }
}


