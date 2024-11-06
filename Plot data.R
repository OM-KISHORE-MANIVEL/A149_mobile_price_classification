training<-read.csv("Data_csv/train.csv", header = TRUE)

for (col_name in names(training)) {
  if (col_name != "mobile_wt") {
    plot(training[["mobile_wt"]], training[[col_name]],
         xlab = "mobile_wt",
         ylab = col_name,
         main = paste("Plot of", col_name, "against mobile_wt"), type = "p", pch = 19,
         cex = 1.5, col = "black")
    grid()
  }
}

