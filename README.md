# Zara Sales Analysis — SQL

## Project Overview

This project uses SQL to analyse Zara product sales data and identify business insights related to revenue, product demand, pricing, promotions, seasonality and store placement.

The analysis is designed for business analyst and data analyst roles because it shows how SQL can be used to answer practical commercial questions and convert raw sales data into actionable recommendations.

## Business Problem

Retail teams need to understand which products, price ranges and store placements generate the strongest sales performance. This project answers questions such as:

- Which products generate the highest sales and revenue?
- Which low-selling products may need discounts or better marketing?
- Do promoted products outperform non-promoted products?
- Which price range drives the highest demand and revenue?
- How do section, seasonality and product placement affect sales?

## Dataset

Dataset source: Kaggle — Zara Sales Dataset.

Link: https://www.kaggle.com/datasets/xontoloyo/data-penjualan-zara/data

The dataset contains Zara product-level sales records, including product position, promotion status, seasonality, sales volume, product details, price and section.

## Tools Used

- SQL
- SQL Server / T-SQL
- SQL Server Management Studio
- CSV data handling
- Business analysis

## Repository Structure

```text
zara-sales-analysis-sql/
├── README.md
├── PROJECT_SUMMARY.md
├── data/
│   ├── README.md
│   ├── zara.csv
│   └── zara_clean.csv
├── sql/
│   ├── setup_database.sql
│   ├── analysis_queries.sql
│   └── original_zara_code.sql
├── docs/
│   ├── original_readme.md
│   └── zara_analysis_questions.docx
└── outputs/
    └── query_results/
```

## Key SQL Analysis Areas

### 1. Sales Analysis

- Total revenue
- Total sales volume
- Top-selling products
- Highest revenue-generating products
- Average product price

### 2. Inventory and Supply Chain Analysis

- Bottom-selling products
- Unique product count
- Zero-sales product checks
- Price range distribution
- Men’s vs women’s section demand

### 3. Promotion and Pricing Analysis

- Promoted vs non-promoted sales volume
- Promoted vs non-promoted average price
- Promotion revenue impact
- Revenue per product by promotion status
- Best-performing promoted price range

### 4. Customer and Demand Analysis

- Section demand by price range
- Seasonal vs non-seasonal product sales
- Highest demand price ranges
- Product position impact on sales
- Price range contribution to revenue

## Key Findings

- Total revenue was approximately **$38,988,476.48**.
- Total sales volume was **459,573 units**.
- The dataset contained **194 unique products**.
- The average product price was approximately **$86.25**.
- The **50–100 price range** was the strongest range for both demand and revenue.
- Men’s products generated substantially higher sales volume than women’s products in this dataset.
- Seasonal products slightly outperformed non-seasonal products.
- Aisle placements generated the highest sales volume among product positions.

## How to Run

1. Open SQL Server Management Studio.
2. Run `sql/setup_database.sql` to create the database and table.
3. Import `data/zara_clean.csv` into the `ZaraSales` table.
4. Run `sql/analysis_queries.sql` to reproduce the analysis.

## Business Recommendations

- Prioritise the **50–100 price range**, as it delivers the strongest demand and revenue contribution.
- Review low-selling products for discounting, repositioning or removal from future product ranges.
- Use promotions selectively, focusing on products and price ranges where revenue uplift is strongest.
- Give stronger placement visibility to products with proven demand, especially in aisle and end-cap positions.
- Monitor section-level demand to support merchandising and stock allocation decisions.

## Project Value

This project demonstrates practical SQL skills for commercial analytics, including aggregation, grouping, conditional logic, segmentation, promotion analysis and business recommendation development.
