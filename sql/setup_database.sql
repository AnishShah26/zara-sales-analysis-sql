-- Zara Sales Analysis: SQL Server Setup Script
-- 1. Create the database
CREATE DATABASE ZaraSalesDB;
GO

USE ZaraSalesDB;
GO

-- 2. Create table for cleaned CSV: data/zara_clean.csv
CREATE TABLE ZaraSales (
    product_id INT,
    product_position VARCHAR(50),
    promotion VARCHAR(10),
    product_category VARCHAR(100),
    seasonal VARCHAR(10),
    sales_volume INT,
    brand VARCHAR(100),
    url VARCHAR(MAX),
    sku VARCHAR(100),
    name VARCHAR(255),
    description VARCHAR(MAX),
    price DECIMAL(10,2),
    currency VARCHAR(10),
    scraped_at VARCHAR(50),
    terms VARCHAR(100),
    section VARCHAR(50)
);
GO

-- 3. Import data/zara_clean.csv using SQL Server Import Wizard or BULK INSERT.
-- Example BULK INSERT path should be replaced with your local file path.
/*
BULK INSERT ZaraSales
FROM 'C:\path\to\zara_clean.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    TABLOCK
);
*/
