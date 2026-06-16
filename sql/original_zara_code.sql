------ Creating and Using that Database ------

Create Database ZaraSalesDB
Go Use ZaraSalesDB

------ Data Exploration ------

-- Data Checking --

SELECT TOP 10 * FROM ZaraSales

-- Total No. of Rows --

SELECT COUNT(*) AS Total_Rows FROM ZaraSales  --- 252

-- Missing Values --

SELECT 
    SUM(CASE WHEN Product_ID IS NULL THEN 1 ELSE 0 END) AS Missing_ProductID,
    SUM(CASE WHEN Price IS NULL THEN 1 ELSE 0 END) AS Missing_Price,
    SUM(CASE WHEN Sales_Volume IS NULL THEN 1 ELSE 0 END) AS Missing_SalesVolume
FROM ZaraSales;  --- No any missing values found

------ Solving Questions ------

--- Sales Analysis ---

-- Question 1: What are the top 10 best-selling products? --

SELECT TOP 10 Name, Product_Category, SUM(Sales_Volume) AS Total_Sales FROM ZaraSales
GROUP BY Name, Product_Category
ORDER BY Total_Sales DESC

-- Question 2: Which product category generates the highest revenue? --

SELECT TOP 1 Product_Category, SUM(Sales_Volume) AS Total_Sales FROM ZaraSales
GROUP BY Product_Category
ORDER BY Total_Sales DESC

-- Question 3: What is the total revenue generated per product category? --

SELECT Product_Category, SUM(Sales_Volume * Price) AS Total_Revenue FROM ZaraSales
GROUP BY Product_Category
ORDER BY Total_Revenue DESC

-- Question 4: Which individual product generated the highest total revenue? --

SELECT TOP 1 name, SUM(Sales_Volume * Price) AS Total_Revenue FROM ZaraSales
GROUP BY name
ORDER BY Total_Revenue DESC

-- Question 5: What is the average price of products sold? --

SELECT AVG(Price) AS Average_Product_Price FROM ZaraSales

--- Inventory & Supply Chain Analysis ---

-- Question 6: Which products have the lowest sales and may need a discount?

SELECT TOP 10 name, SUM(Sales_Volume) AS Total_Sales FROM ZaraSales
GROUP BY name
ORDER BY Total_Sales ASC

-- Question 7: How many unique products are sold? --

SELECT COUNT(DISTINCT name) AS Total_Unique_Products FROM ZaraSales

-- Question 8: Are there any products with zero sales? --

SELECT name, Sales_Volume FROM ZaraSales
WHERE Sales_Volume = 0

-- Question 9: What is the most common price range for products? --

SELECT
	CASE
		WHEN Price < 50 THEN 'Below 50'
		WHEN Price BETWEEN 50 AND 100 THEN '50-100'
		WHEN Price BETWEEN 50 AND 100 THEN '100-150'
		WHEN Price BETWEEN 50 AND 100 THEN '150-200'
		ELSE 'Above 200'
	END AS Price_Range,
	Count(*) AS Product_Count
FROM ZaraSales
GROUP BY
	CASE
		WHEN Price < 50 THEN 'Below 50'
		WHEN Price BETWEEN 50 AND 100 THEN '50-100'
		WHEN Price BETWEEN 50 AND 100 THEN '100-150'
		WHEN Price BETWEEN 50 AND 100 THEN '150-200'
		ELSE 'Above 200'
	END
ORDER BY Product_Count DESC

-- Question 10: Which section (Mens or Womens) sells the most? --

SELECT section, SUM(Sales_Volume) AS Total_Sales FROM ZaraSales
GROUP BY section
ORDER BY Total_Sales DESC

--- Promotion & Pricing Analysis ---

-- Question 11: Do products on promotion sell more than non-promoted products? --

SELECT Promotion, SUM(Sales_Volume) AS Total_Sales FROM ZaraSales
GROUP BY Promotion
ORDER BY Total_Sales

-- Question 12: What is the average price of products which promoted and non-promoted? --

SELECT Promotion, AVG(Price) AS Average_Price FROM ZaraSales
GROUP BY Promotion
Order BY Average_Price DESC

-- Question 13: Do promotions increase revenue, or do they just increase sales volume? --

SELECT Promotion, SUM(Sales_Volume * Price) AS Total_Revenue FROM ZaraSales
GROUP BY Promotion
ORDER BY Total_Revenue DESC

-- Question 14: Do promoted products generate higher revenue per sale compared to non-promoted products? --

SELECT Promotion, AVG(Sales_Volume * Price) AS Average_Revenue_Per_Sale FROM ZaraSales
GROUP BY Promotion
ORDER BY Average_Revenue_Per_Sale DESC

--  Question 15: Which price range benefits the most from promotions? --

SELECT Promotion,
    CASE
        WHEN Price < 50 THEN 'Below 50'
        WHEN Price BETWEEN 50 AND 100 THEN '50-100'
        WHEN Price BETWEEN 101 AND 150 THEN '100-150'
        WHEN Price BETWEEN 151 AND 200 THEN '150-200'
        ELSE 'Above 200'
    END AS Price_Range,
    SUM(Sales_Volume) as Total_Sales
FROM ZaraSales
GROUP BY Promotion,
    CASE
        WHEN Price < 50 THEN 'Below 50'
        WHEN Price BETWEEN 50 AND 100 THEN '50-100'
        WHEN Price BETWEEN 101 AND 150 THEN '100-150'
        WHEN Price BETWEEN 151 AND 200 THEN '150-200'
        ELSE 'Above 200'
    END
ORDER BY Total_Sales DESC

--- Customer & Demand Analysis ---

-- Question 16: Which section (Mens or Womens) has higher demand across different price ranges? --

SELECT Section,
    CASE
        WHEN Price < 50 THEN 'Below 50'
        WHEN Price BETWEEN 50 AND 100 THEN '50-100'
        WHEN Price BETWEEN 101 AND 150 THEN '100-150'
        WHEN Price BETWEEN 151 AND 200 THEN '150-200'
        ELSE 'Above 200'
    END AS Price_Range,
    SUM(Sales_Volume) as Total_Sales
FROM ZaraSales
GROUP BY Section,
    CASE
        WHEN Price < 50 THEN 'Below 50'
        WHEN Price BETWEEN 50 AND 100 THEN '50-100'
        WHEN Price BETWEEN 101 AND 150 THEN '100-150'
        WHEN Price BETWEEN 151 AND 200 THEN '150-200'
        ELSE 'Above 200'
    END
ORDER BY Total_Sales DESC

-- Question 17: Do seasonal products sell better than non-seasonal products? --

SELECT Seasonal, SUM(Sales_Volume) AS Total_Sales FROM ZaraSales
GROUP BY Seasonal
ORDER BY Total_Sales DESC

-- Question 18: Which price range has the highest demand? --

SELECT
	CASE
        WHEN Price < 50 THEN 'Below 50'
        WHEN Price BETWEEN 50 AND 100 THEN '50-100'
        WHEN Price BETWEEN 101 AND 150 THEN '100-150'
        WHEN Price BETWEEN 151 AND 200 THEN '150-200'
        ELSE 'Above 200'
    END AS Price_Range,
	SUM(Sales_Volume) AS Total_Sales
FROM ZaraSales
GROUP BY
	CASE
        WHEN Price < 50 THEN 'Below 50'
        WHEN Price BETWEEN 50 AND 100 THEN '50-100'
        WHEN Price BETWEEN 101 AND 150 THEN '100-150'
        WHEN Price BETWEEN 151 AND 200 THEN '150-200'
        ELSE 'Above 200'
    END
ORDER BY Total_Sales DESC

-- Question 19: How does product position in the catalog/store affect sales? --

SELECT Product_Position, SUM(Sales_Volume) AS Total_Sales FROM ZaraSales
GROUP BY Product_Position
ORDER BY Total_Sales DESC

-- Question 20: Which price range has the highest total revenue? --

SELECT 
    CASE
        WHEN Price < 50 THEN 'Below 50'
        WHEN Price BETWEEN 50 AND 100 THEN '50-100'
        WHEN Price BETWEEN 101 AND 150 THEN '100-150'
        WHEN Price BETWEEN 151 AND 200 THEN '150-200'
        ELSE 'Above 200'
    END AS Price_Range,
    SUM(Price * Sales_Volume) AS Total_Revenue
FROM ZaraSales
GROUP BY 
    CASE
        WHEN Price < 50 THEN 'Below 50'
        WHEN Price BETWEEN 50 AND 100 THEN '50-100'
        WHEN Price BETWEEN 101 AND 150 THEN '100-150'
        WHEN Price BETWEEN 151 AND 200 THEN '150-200'
        ELSE 'Above 200'
    END
ORDER BY Total_Revenue DESC;
