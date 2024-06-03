# R-Analysis-of-Sales-Data-pen_spark

This document outlines the process of analyzing sales data using R. The code provided performs data loading, cleaning, and basic analysis, providing insights into sales performance.

# Data Loading:

Required Libraries: We begin by loading the dplyr and ggplot2 packages for data manipulation and visualization, respectively. An additional library, readr, is loaded for reading CSV files.
Data File: The data file is assumed to be named "sales_data_sample.csv" and can be changed to match your actual file name.
Loading the Data: The read_csv function reads the data from the specified file and stores it in a data frame named "data".
Data Preview: The head function displays the first few rows of the data frame to get a quick glimpse into the available variables.
Data Cleaning:

Duplicate Removal: The distinct function removes duplicate rows from the data frame, creating a clean version named "sales_data_sample_clean".
Missing Value Handling:

Total Sales: This step calculates the total sales by summing the "SALES" column. The na.rm = TRUE argument ensures missing values (NA) are excluded from the calculation.
Basic Analysis:

Total Sales: Similar to the previous step, the total sales are calculated again, ensuring missing values are removed using na.rm = TRUE.
Average Sales by City: We leverage the dplyr package for this analysis.
The data is grouped by the "CITY" variable using group_by.
Within each city group, the average sales ("avg_sales") are calculated using summarise and the mean function, again excluding missing values with na.rm = TRUE.
Number of Sales per Product: Similar to average sales by city, this step groups the data by "PRODUCTLINE" and uses summarise with the n function to count the number of sales for each product line.
Data Visualization:

Average Sales by City: A bar chart is created using ggplot2 to visualize the average sales for each city. The chart includes a title, labels for axes, and theme adjustments for aesthetics.
Number of Sales per Product: Another bar chart is created to show the number of sales for each product line. The chart is customized with a title, labels, and theme adjustments similar to the previous chart.
Important Notes:

Remember to replace "sales_data_sample.csv" with the actual name of your data file.
The handling of missing values (NA) may need adjustments depending on your specific analysis. This script assumes removal, but imputation or other techniques might be necessary.
This R code provides a foundation for analyzing your sales data and gaining valuable insights into sales performance across cities and product lines. You can further customize the analysis by including additional variables, visualizations, or more complex statistical techniques.
