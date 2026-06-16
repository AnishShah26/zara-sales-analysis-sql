-- Zara Sales Analysis: Main SQL Queries
-- SQL Server / T-SQL version

USE ZaraSalesDB;
GO

-- Data quality checks
SELECT COUNT(*) AS total_rows FROM ZaraSales;

SELECT
    SUM(CASE WHEN product_id IS NULL THEN 1 ELSE 0 END) AS missing_product_id,
    SUM(CASE WHEN price IS NULL THEN 1 ELSE 0 END) AS missing_price,
    SUM(CASE WHEN sales_volume IS NULL THEN 1 ELSE 0 END) AS missing_sales_volume
FROM ZaraSales;

-- 1. Total revenue
SELECT SUM(price * sales_volume) AS total_revenue
FROM ZaraSales;

-- 2. Total number of products sold
SELECT SUM(sales_volume) AS total_sales_volume
FROM ZaraSales;

-- 3. Top 10 best-selling products
SELECT TOP 10
    name,
    product_category,
    SUM(sales_volume) AS total_sales
FROM ZaraSales
GROUP BY name, product_category
ORDER BY total_sales DESC;

-- 4. Top 10 revenue-generating products
SELECT TOP 10
    name,
    SUM(price * sales_volume) AS total_revenue
FROM ZaraSales
GROUP BY name
ORDER BY total_revenue DESC;

-- 5. Average price of products sold
SELECT AVG(price) AS average_product_price
FROM ZaraSales;

-- 6. Bottom 10 products by sales volume
SELECT TOP 10
    name,
    SUM(sales_volume) AS total_sales
FROM ZaraSales
GROUP BY name
ORDER BY total_sales ASC;

-- 7. Unique products sold
SELECT COUNT(DISTINCT name) AS total_unique_products
FROM ZaraSales;

-- 8. Products with zero sales
SELECT name, sales_volume
FROM ZaraSales
WHERE sales_volume = 0;

-- Reusable price range logic used in later queries
-- Below 50, 50-100, 100-150, 150-200, Above 200

-- 9. Most common price range by product count
SELECT
    CASE
        WHEN price < 50 THEN 'Below 50'
        WHEN price BETWEEN 50 AND 100 THEN '50-100'
        WHEN price BETWEEN 101 AND 150 THEN '100-150'
        WHEN price BETWEEN 151 AND 200 THEN '150-200'
        ELSE 'Above 200'
    END AS price_range,
    COUNT(*) AS product_count
FROM ZaraSales
GROUP BY
    CASE
        WHEN price < 50 THEN 'Below 50'
        WHEN price BETWEEN 50 AND 100 THEN '50-100'
        WHEN price BETWEEN 101 AND 150 THEN '100-150'
        WHEN price BETWEEN 151 AND 200 THEN '150-200'
        ELSE 'Above 200'
    END
ORDER BY product_count DESC;

-- 10. Section with highest sales
SELECT section, SUM(sales_volume) AS total_sales
FROM ZaraSales
GROUP BY section
ORDER BY total_sales DESC;

-- 11. Promotion vs non-promotion sales volume
SELECT promotion, SUM(sales_volume) AS total_sales
FROM ZaraSales
GROUP BY promotion
ORDER BY total_sales DESC;

-- 12. Average price: promoted vs non-promoted
SELECT promotion, AVG(price) AS average_price
FROM ZaraSales
GROUP BY promotion
ORDER BY average_price DESC;

-- 13. Promotion revenue impact
SELECT promotion, SUM(price * sales_volume) AS total_revenue
FROM ZaraSales
GROUP BY promotion
ORDER BY total_revenue DESC;

-- 14. Average revenue per product under promotion status
SELECT promotion, AVG(price * sales_volume) AS average_revenue_per_product
FROM ZaraSales
GROUP BY promotion
ORDER BY average_revenue_per_product DESC;

-- 15. Price range that benefits most from promotions
SELECT
    promotion,
    CASE
        WHEN price < 50 THEN 'Below 50'
        WHEN price BETWEEN 50 AND 100 THEN '50-100'
        WHEN price BETWEEN 101 AND 150 THEN '100-150'
        WHEN price BETWEEN 151 AND 200 THEN '150-200'
        ELSE 'Above 200'
    END AS price_range,
    SUM(sales_volume) AS total_sales
FROM ZaraSales
GROUP BY promotion,
    CASE
        WHEN price < 50 THEN 'Below 50'
        WHEN price BETWEEN 50 AND 100 THEN '50-100'
        WHEN price BETWEEN 101 AND 150 THEN '100-150'
        WHEN price BETWEEN 151 AND 200 THEN '150-200'
        ELSE 'Above 200'
    END
ORDER BY total_sales DESC;

-- 16. Section demand across price ranges
SELECT
    section,
    CASE
        WHEN price < 50 THEN 'Below 50'
        WHEN price BETWEEN 50 AND 100 THEN '50-100'
        WHEN price BETWEEN 101 AND 150 THEN '100-150'
        WHEN price BETWEEN 151 AND 200 THEN '150-200'
        ELSE 'Above 200'
    END AS price_range,
    SUM(sales_volume) AS total_sales
FROM ZaraSales
GROUP BY section,
    CASE
        WHEN price < 50 THEN 'Below 50'
        WHEN price BETWEEN 50 AND 100 THEN '50-100'
        WHEN price BETWEEN 101 AND 150 THEN '100-150'
        WHEN price BETWEEN 151 AND 200 THEN '150-200'
        ELSE 'Above 200'
    END
ORDER BY total_sales DESC;

-- 17. Seasonal vs non-seasonal sales
SELECT seasonal, SUM(sales_volume) AS total_sales
FROM ZaraSales
GROUP BY seasonal
ORDER BY total_sales DESC;

-- 18. Highest demand price range
SELECT
    CASE
        WHEN price < 50 THEN 'Below 50'
        WHEN price BETWEEN 50 AND 100 THEN '50-100'
        WHEN price BETWEEN 101 AND 150 THEN '100-150'
        WHEN price BETWEEN 151 AND 200 THEN '150-200'
        ELSE 'Above 200'
    END AS price_range,
    SUM(sales_volume) AS total_sales
FROM ZaraSales
GROUP BY
    CASE
        WHEN price < 50 THEN 'Below 50'
        WHEN price BETWEEN 50 AND 100 THEN '50-100'
        WHEN price BETWEEN 101 AND 150 THEN '100-150'
        WHEN price BETWEEN 151 AND 200 THEN '150-200'
        ELSE 'Above 200'
    END
ORDER BY total_sales DESC;

-- 19. Product position and sales
SELECT product_position, SUM(sales_volume) AS total_sales
FROM ZaraSales
GROUP BY product_position
ORDER BY total_sales DESC;

-- 20. Highest revenue price range
SELECT
    CASE
        WHEN price < 50 THEN 'Below 50'
        WHEN price BETWEEN 50 AND 100 THEN '50-100'
        WHEN price BETWEEN 101 AND 150 THEN '100-150'
        WHEN price BETWEEN 151 AND 200 THEN '150-200'
        ELSE 'Above 200'
    END AS price_range,
    SUM(price * sales_volume) AS total_revenue
FROM ZaraSales
GROUP BY
    CASE
        WHEN price < 50 THEN 'Below 50'
        WHEN price BETWEEN 50 AND 100 THEN '50-100'
        WHEN price BETWEEN 101 AND 150 THEN '100-150'
        WHEN price BETWEEN 151 AND 200 THEN '150-200'
        ELSE 'Above 200'
    END
ORDER BY total_revenue DESC;
