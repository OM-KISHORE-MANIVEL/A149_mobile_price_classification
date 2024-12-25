1. Research question

Is there a correlation between the weight of a mobile device and its battery capacity?

2. Overview

This project investigates whether there is a correlation between the weight of a mobile device and its battery capacity using data from the "Mobile Price Classification - test.csv" dataset on Kaggle.

3. Files Included

test.csv: Dataset containing mobile device features, including weight (mobile_wt) and battery capacity (battery_power).

plot_data.r: R script to clean, analyze, and visualize the data. The script produces scatter plots and computes correlation metrics.

4. Objective

To determine if there is a statistical relationship between the weight of a mobile device (mobile_wt) and its battery capacity (battery_power).

5. Methodology

Load Dataset: Import test.csv for analysis.

Data Cleaning: Handle missing or erroneous values.

Visualization: Use scatter plots to observe trends between weight and battery capacity.

Correlation Analysis: Calculate the Spearman correlation coefficient to quantify the relationship.

Spearman’s correlation measures the linear relationship between two continuous variables. It ranges from -1 to 1:
1: Perfect positive correlation.
0: No linear relationship.
-1: Perfect negative correlation

Results Interpretation: Interpret findings and determine if the null hypothesis can be rejected.

6. Instructions

Prerequisites

R and RStudio installed on your system.

Required R libraries: ggplot2.

Steps

Prepare Dataset: Ensure test.csv is in the same directory as the script.

Run the Script: Execute plot_data.r in RStudio.

View Outputs:

Scatter plot showing the relationship between mobile_wt and battery_power.
Spearman correlation coefficient displayed in the console.

7. Dependencies

Software:
R version 4.0+
RStudio
Libraries:
ggplot2

8. Authors

Athul Krishna Renjith
Deepak Thamarai Kannan
Karthik Baskar
Om Kishore Manivel
Raj Agrawal

9. Notes
Outliers or unusual data points, if found, may influence the correlation result.
Ensure the dataset has no missing values in the columns mobile_wt and battery_power.
