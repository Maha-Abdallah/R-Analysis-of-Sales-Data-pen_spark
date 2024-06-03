# Load necessary libraries
library(dplyr)
library(ggplot2)

# Load necessary library
library(readr)

# Specify the name of your data file
file_name <- "sales_data_sample.csv"

# Load the data into a data frame
data <- read_csv(file_name)

# View the first few rows of the data
head(data)



# Removing duplicates
sales_data_sample_clean <- distinct(data)



# Dealing with missing values
total_sales <- sum(sales_data_sample_clean$SALES, na.rm = TRUE)



# Perform basic analysis
# To get the total sales
total_sales <- sum(sales_data_sample_clean$sales, na.rm = TRUE)

# To get the average sales by region
avg_sales_by_region <- sales_data_sample_clean %>%
  group_by(CITY) %>%
  summarise(avg_sales = mean(SALES, na.rm = TRUE))


# To get the number of sales per product
num_sales_per_product <- sales_data_sample_clean %>%
  group_by(PRODUCTLINE) %>%
  summarise(num_sales = n())

# Visualize the data
# Bar plot of average sales by region
ggplot(avg_sales_by_region, aes(x=CITY, y=avg_sales)) +
  geom_bar(stat="identity", fill="steelblue") +
  theme_minimal() +
  labs(title="Average Sales by Region", x="CITY", y="Average Sales")


# Bar plot of number of sales per product
ggplot(num_sales_per_product, aes(x=PRODUCTLINE, y=num_sales)) +
  geom_bar(stat="identity", fill="steelblue") +
  theme_minimal() +
  labs(title="Number of Sales per Product", x="Product", y="Number of Sales")

