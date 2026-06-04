# Retail-Sales-Analytics-
# Retail Sales Analytics Project

## Project Overview

This project analyzes retail sales data to uncover insights into business performance, customer behavior, product profitability, regional sales trends, and shipping efficiency. The analysis was conducted using SQL Server for data cleaning and exploratory data analysis (EDA), followed by Power BI for dashboard development and visualization.

## Business Problem

Retail organizations generate large volumes of transactional data. Decision makers require insights into sales performance, profitability, customer segments, product performance, and operational efficiency to support strategic planning and business growth.

This project aims to answer key business questions and provide data-driven recommendations through interactive reporting.

## Tools Used

- SQL Server Management Studio (SSMS)
- SQL
- Power BI
- GitHub

## Dataset

Dataset: Superstore Sales Dataset

The dataset contains information on:

- Orders
- Customers
- Products
- Sales
- Profit
- Discounts
- Regions
- Shipping Information

## Data Cleaning Process

The following data quality checks were performed:

### Data Inspection
- Reviewed column names and data types
- Validated date fields
- Examined data completeness

### Missing Values
- Checked for null values across critical columns
- No significant missing values identified

### Duplicate Assessment
- Investigated potential duplicate records
- Identified records with similar Order IDs and Product IDs
- Verified that most represented legitimate transactions
- Removed only confirmed duplicate records where appropriate

### Date Validation
- Validated Order Date and Ship Date fields
- Ensured compatibility with SQL date functions

## Exploratory Data Analysis (EDA)

The following business questions were explored:

### 1. Overall Business Performance
- Total Revenue
- Total Profit
- Total Quantity Sold

### 2. Regional Performance
- Revenue by Region
- Profit by Region

### 3. Product Performance
- Revenue by Category
- Profit by Category
- Top 10 Products by Revenue

### 4. Customer Analysis
- Revenue by Segment
- Average Order Value
- Top Customers

### 5. Discount Analysis
- Relationship between Discount and Profit

### 6. Sales Trends
- Monthly Revenue Trends
- Yearly Revenue Trends

### 7. Shipping Performance
- Average Shipping Days by Ship Mode

## Key Insights


### Sales Performance
- Total Revenue: [2.30M]
- Total Profit: [285.83K]

### Regional Insights
- Highest Revenue Region: [West]
- Lowest Revenue Region: [Central]

### Product Insights
- Most Profitable Category: [Technology]
- Top Revenue Product: [Canon imageCLASS 2200 Advanced Copier]

### Customer Insights
- Highest Revenue Segment: [Consumer]

### Operational Insights
- Fastest Shipping Method: [Same Day]
- Slowest Shipping Method: [Standard Class]

### Discount Insights
- Higher discounts were associated with [higher/lower] profitability.

## Dashboard Overview

The Power BI dashboard consists of four pages:

### Executive Overview
- Revenue KPI
- Profit KPI
- Profit Margin
- Orders
- Quantity Sold
- Monthly Revenue Trend
- Revenue by Region

### Product Performance
- Revenue by Category
- Profit by Category
- Top 10 Productsiqq
- Subcategory Profitability

### Customer Analysis
- Revenue by Segment
- Average Order Value
- Top Customers
- Geographic Distribution

### Operations Dashboard
- Average Shipping Days
- Shipping Performance by Mode
- Orders by Ship Mode
- Discount vs Profit Analysis

## Business Recommendations

1. Increase investment in high-performing products and categories.
2. Review discounting strategies to protect profitability.
3. Strengthen marketing efforts toward the most valuable customer segments.
4. Improve logistics processes for slower shipping methods.
5. Monitor regional performance and allocate resources accordingly.

## Project Structure

Retail-Sales-Analytics/

│

├── Data/

│   └── Superstore.csv

│

├── SQL/

│   ├── data_cleaning.sql

│   └── eda_queries.sql

│

├── PowerBI/

│   └── Retail_Sales_Dashboard.pbix

│

├── Images/

│   ├── Executive_Overview.png

│   ├── Product_Performance.png

│   ├── Customer_Analysis.png

│   └── Operations_Dashboard.png

│

└── README.md

## Author

Taiwo Oluwakemi Esther

Data Analytics Portfolio Project

SQL Server | Power BI | Business Intelligence
