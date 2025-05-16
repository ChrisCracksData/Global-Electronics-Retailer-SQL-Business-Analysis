# Global Electronics Retailer: SQL Business Analysis

## 📌 Project Overview

This project uses SQL to analyze the Global Electronics Retailer dataset from Maven Analytics, a dataset designed to simulate real-world sales transactions and business operations. By exploring sales performance, customer behavior, and profitability, this analysis offers actionable insights that can inform business decisions and better optimize sales strategies.

My main goal with this project is to demonstrate my proficiency with SQL techniques like joins, CTEs, window functions, and aggregation through the use of optimized queries. The README is organized to provide a clear understanding of the project’s structure, including dataset details, key concepts demonstrated, and what I've learned throughout. Each business question is accompanied by a direct link to the corresponding query, outputs, and visualizations, helping make insights easily accessible and understandable.

## 📁 Project Structure

```
Global-Electronics-Retailer-SQL-Business-Analysis/
├── README.md 								# Main project overview and documentation
├── data/                                                               # Tables and data dictionary
│ 	├── data_dictionary.csv
│ 	├── sales.csv
│ 	├── products.csv
│ 	├── customers.csv
│ 	├── stores.csv
│ 	└── exchange_rates.csv
│
├── queries/ 								# Queries used for analysis
│ 	├── 00_table_creation.sql
│ 	├── 01_product_customer_insights.sql
│ 	├── 02_top_sellers.sql
│ 	├── 03_seasonal_trends.sql
│ 	├── 04_avg_delivery_times.sql
│ 	└── 05_online_vs_instore.sql
│
└── outputs/ 								# Formatted query outputs and visualizations
	└── summary_tables.xlsx
```

## 📊 Dataset Description & Schema

This project uses the publicly available [Global Electronics Retailer dataset from Maven Analytics](https://mavenanalytics.io/data-playground) which contains transactional sales data for a fictitious global electronics retailer. The dataset consists of 62,884 records and 37 fields structured across the following tables:

* `Sales` – Contains transaction information including order number, order date, delivery date, customer and store keys, quantity, and currency code.
* `Products` – Describes product brands, colors, unit costs, prices, and categories.
* `Customers` – Details about each customer, including gender, name, age, and location information.
* `Stores` – Details about each store, including location, size, and opening date.
* `Exchange Rates` – Contains day-to-day currency exchange rates.

Included below is an Entity-Relationship diagram illustrating the dataset's structure and table relationships:


![diagram](https://github.com/user-attachments/assets/f8e9ac6e-1eca-43b9-bd08-6bc8fb871011)


## 🔎 Business Questions

1. What types of products does the company sell, and where are customers located?
2. What are the top 10 best-selling products by total profit?
3. Are there any seasonal patterns or trends for order volume?
4. How long is the average delivery time in days? Has that changed over time?
5. Is there a difference in average order value (AOV) for online vs. in-store sales?

## 🎯 Analysis and Results

 ### 1. Product & Customer Distribution
- [View Query]()
- [View Output]()
- **Key Findings:**
	- The company offers products across eight categories: Computers, Cameras and Camcorders, Home Appliances, Games and Toys, Cell Phones, TV and Video, Music, Movies and Audio Books, and Audio. Among these, Computers account for approximately 27% of total sales.
	- The United States has the highest number of unique customers, making up approximately 45% of the total customer base.
​
### 2. Top-Selling Products by Profit
- [View Query]()
- [View Output]()
- **Key Findings:**
	- Among the top 10 best-selling products by total profit, the top 3 are:
	  1. Adventure Works Desktop PC2.33 XD233 – $1.21 million  
	  2. WWI Desktop PC2.33 X2330 – $1.14 million
	  3. Adventure Works 52 LCD HDTV X590 – $957.95K 
	- These top three products dominate sales, collectively generating over $3.3 million in revenue.
​
### 3. Seasonal Trends
- [View Query]()
- [View Output]()
- **Key Findings:**
	- On average December has the highest order volume, suggesting strong holiday sales.
	- February, followed by January, have the second and third highest order volumes.
	- March and April have signifigant dips in order volume, with a strong bounceback seen in May.
​
### 4. Average Delivery Times
- [View Query]()
- [View Output]()
- **Key Findings:**
	- Between 2016 and 2018, average deilvery times decreased at a consistent rate.
	- Between 2018 to 2021, average delivery times continued to decline but at a slower rate than before.
​
### 5. Online vs. In-Store Performance
- [View Query]()
- [View Output]()
- **Key Findings:**
	- Online and in-store orders show minimal differences  in average value.
	- The average online order value is approximately $2,045, while in-store orders average around $2,138.

## 🧠 SQL Concepts Demonstrated

* Aggregation with `SUM`, `AVG`, and `COUNT`
* Conditional logic with `CASE WHEN`
* Common Table Expressions (CTEs) with `WITH` statements
* Date functions with `DATE_TRUNC`, `TO_CHAR`, and `EXTRACT`
* Ensuring unique values with `DISTINCT`
* Filtering with `WHERE` and `HAVING`
* Grouping with `GROUP BY`
* Joining tables with `JOIN`
* String manipulation with `SUBSTRING` and `REVERSE`
* Rounding with `ROUND`
* Window functions with `OVER()`

## 🧩 Challenges & Learnings

### Challenges
-   **String Manipulation for Product Names:** Used string manipulation to remove color descriptions from product names. Although removing this data would enhance clarity (since a separate color column exists), doing so would break the primary key relationship with the sales table.
- **Data Type Conversion:** Encountered formatting issues when importing the product sheet into PostgreSQL due to currency data types. Resolved this by converting currency values to float for accurate import.
-   **CSV Encoding Issues:** The customers CSV file could not be imported properly due to encoding issues. Corrected this by converting it to standard CSV UTF-8 format.
-   **Table Creation Order Sensitivity:** Learned that the order in which your create your tables matters due to primary and foreign key constraints, which initially led to key errors that I'd never hadn't encountered before.
-   **Data Constraints Tweaking:** Had to adjust column constraints, such as increasing VARCHAR limits, to successfully import data without errors.
-   **ER Diagram Creation:** Faced initial challenges in accurately representing table relationships and constraints in the ER diagram but refined it to ensure clarity and accuracy.
-   **Independent Setup Experience:** Setting up the database independently (including finding the dataset, defining constraints, creating an ER diagram, and handling imports) was more challenging than working in a guided teaching environment but ultimately rewarding and helped expand upon what I've learned through my time in college.
    
### Learnings
-   Improved my understanding of string manipulation in SQL to clean and format text.
-   Enhanced data preparation skills, including data type conversion, encoding adjustments, and constraint management for smooth database import.
-   Improved understanding of database design by creating and refining an ER diagram that accurately represents table relationships.
-   Gained practical experience with database setup, including understanding the importance of import order and constraint management.
-   Developed a deeper understanding of database management outside a teaching environment.
