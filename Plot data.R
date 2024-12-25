#load data
training<-read.csv("test.csv", header = TRUE)

# Dependent variable
dependent_var <- training[["mobile_wt"]]

# Histogram with normal curve
hist(dependent_var,
     main = "Histogram of mobile weight with Normal Curve",
     xlab = "mobile weight (g)",
     col = "lightblue",
     border = "black",
     prob = TRUE,
     ylim = c(0, 0.015))

mean_val <- mean(dependent_var, na.rm = TRUE)

sd_val <- sd(dependent_var, na.rm = TRUE)

curve(dnorm(x, mean = mean_val, sd = sd_val),
      col = "red", lwd = 4, add = TRUE)

#Correlation plot
plot(training[["battery_power"]], training[["mobile_wt"]],
         xlab = "battery power (mAh)",
         ylab = "mobile weight (g)",
         main = paste("Plot of mobile weight against battery power"), type = "p", pch = 19,
         cex = 1.5, col = "black")
    
#linear trend line
model <- lm(training[["mobile_wt"]] ~ training[["battery_power"]])
abline(model, col = "blue", lwd = 2)

#Adding grid   
grid()

# Calculate Spearman's rank correlation and p-value
spearman_test <- cor.test(training[["battery_power"]], training[["mobile_wt"]],
                          method = "spearman", 
                          exact = FALSE)

# Extract and print the results
spearman_corr <- spearman_test$estimate
p_value <- spearman_test$p.value

# Print results
print(paste("Spearman's Rank Correlation:", round(spearman_corr, 3)))
print(paste("P-value:", format.pval(p_value, digits = 3)))




