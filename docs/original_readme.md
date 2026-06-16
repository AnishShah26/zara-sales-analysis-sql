# Zara Sales Analysis

## 🎯 Goal
The goal of this project is to analyze Zara's sales data and provide actionable insights for optimizing revenue, inventory management, and customer demand.

## 📌 Overview
This project involves an in-depth SQL analysis of Zara’s sales performance, covering key aspects such as:
- Total revenue and sales volume
- Product pricing impact on profitability
- Effectiveness of promotions
- Seasonal demand variations
- Store placement influence on sales

## 🛠 Tools & Libraries Used
- **SQL** – For querying and analyzing sales data
- **SQL Server Management Studio (SSMS)** – For executing SQL queries and managing databases
- **Data Analysis** – Extracting business insights from sales data

## 📊 Kaggle Dataset
The dataset used for this project can be found at: [Kaggle Zara Sales Dataset](https://www.kaggle.com/datasets/xontoloyo/data-penjualan-zara/data)

### **Dataset Overview**
The dataset consists of sales records containing attributes such as Product ID, Price, Category, Seasonal Tag, Sales Volume, Brand, and Promotions.

## 🔍 Key Insights & Findings

### Sales Analysis
- **Total Revenue:** $38,988,476.48
- **Total Products Sold:** 459,573
- **Highest-Priced Product:** Premium Leather Jacket - $299
- **Lowest-Priced Product:** Basic Cotton T-shirt - $19
- **Average Price of Products Sold:** $86.25

### Inventory & Supply Chain Analysis
- **Bottom 10 Products by Sales Volume:**
  - Abstract Jacquard Sweater (529)
  - High Collar Knit Sweater (542)
  - V-Neck Knit Sweater (558)
  - Knit Open Back Pearly Sweater (606)
  - Knit Sweater with Rips (622)
  - Pleated Wide Fit Jeans (624)
  - Mixed Collar Jacket (628)
  - Textured Pocket Jacket (647)
  - Tuxedo Jacket (654)
  - Oversized Bomber Jacket (706)
- **Total Unique Products Sold:** 194
- **Zero Sales Products:** None
- **Most Common Price Range:**
  - $50-$100: 107 products
  - Above $200: 74 products
  - Below $50: 71 products
- **Top-Selling Section:**
  - Men’s: 396,199 units
  - Women’s: 63,374 units

### Promotion & Pricing Analysis
- **Do Promoted Products Sell More?**
  - Yes: 219,261 promoted sales vs. 240,312 non-promoted sales
- **Average Price Comparison:**
  - Promoted: $92.41
  - Non-Promoted: $80.65
- **Revenue Impact of Promotions:**
  - Promoted Revenue: $19,994,386.90
  - Non-Promoted Revenue: $18,994,089.58
- **Revenue per Sale Comparison:**
  - Promoted: $166,619.89
  - Non-Promoted: $143,894.61
- **Best Performing Price Range for Promotions:**
  - Non-Promoted: 50-100 price range (111,784 sales)
  - Promoted: 50-100 price range (88,769 sales)

### Customer & Demand Analysis
- **Top Demand by Section & Price Range:**
  - Men’s: 50-100 price range (186,986 sales)
  - Women’s: Below 50 price range (47,235 sales)
- **Seasonal vs. Non-Seasonal Sales:**
  - Seasonal: 233,181
  - Non-Seasonal: 226,392
- **Price Range with Highest Demand:**
  - 50-100: 200,553 sales
  - Below 50: 127,861 sales
- **Impact of Product Placement in Store:**
  - Aisle Sales: 177,396
  - End-Cap Sales: 152,930
  - Front of Store Sales: 129,247
- **Highest Revenue-Generating Price Range:**
  - 50-100: $15,692,720.38
  - 100-150: $11,220,134.00
  - 150-200: $5,467,195.00


## 📌 Steps Followed
- Data Extraction & Cleaning: Processed raw sales data using SQL queries.
- Exploratory Data Analysis: Analyzed trends, pricing impact, and seasonal effects.
- Promotion Impact Evaluation: Compared promoted vs. non-promoted performance.
- Customer Demand Analysis: Identified trends in product demand and store placement.

## 📈 Results 
- Total Revenue: $38,988,476.48 with 459,573 total sales.
- Most Profitable Price Range: $50-$100, generating the highest revenue and demand.
- Top-Selling Product: Premium Leather Jacket - $299.
- Promotions Impact: Increased both sales volume (219,261 units) and revenue ($19,994,386.90).
- Seasonal Sales Trend: Seasonal products slightly outperform non-seasonal items (233,181 vs. 226,392).
- Store Placement Effect: Aisle placements drive the most sales (177,396 units).
- Customer Demand: Men’s section dominates sales, accounting for 396,199 units

## 📌 Final Takeaways
- Zara should focus on the $50-100 price range as it generates the highest revenue and demand.
- Promotions work, but they should be optimized to balance profit margins.
- Low-performing products may need discounts or better marketing strategies.
- Strategic placement in stores (aisles, end-caps) significantly impacts sales performance.
