import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# Load the CSV file
data = pd.read_csv(r'C:\Users\ACER\Desktop\A149_mobile_price_classification\Data_csv\test.csv')

# Display the first few rows of the dataset to understand its structure
print(data.head())

# Plotting example (customize columns as needed)
plt.plot(data['battery_power'], data['blue'])  # Replace 'Column1' and 'blue' with actual column names
plt.xlabel('battery_power')
plt.ylabel('blue')
plt.title('Plot of battery_power vs blue')
plt.show()

data.hist(figsize=(15, 10), bins=20)
plt.tight_layout()
plt.show()

# Compute the correlation matrix
correlation_matrix = data.corr()

# Plot the heatmap
plt.figure(figsize=(12, 8))
sns.heatmap(correlation_matrix, annot=True, fmt='.2f', cmap='coolwarm')
plt.title('Correlation Matrix')
plt.show()

