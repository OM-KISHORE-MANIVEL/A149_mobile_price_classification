#load data
training<-read.csv("Data_csv/train.csv", header = TRUE)

for (col_name in names(training)) {
  if (col_name != "mobile_wt") {
    
    # histogram
    hist(training[[col_name]],
         main = paste("Histogram of", col_name),
         xlab = col_name,
         col = "blue",
         border = "black")
  }
}

for (col_name in names(training)) {
  if (col_name != "mobile_wt") {
    
    #plots
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


