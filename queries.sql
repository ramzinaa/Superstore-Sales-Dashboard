Create database if not exists superstore;
use superstore;


SELECT * FROM train;

SELECT COUNT(*) AS Total_Records
FROM train;
-- Total Sales
SELECT SUM(Sales) AS Total_Sales
FROM train;
-- Avg Sales
SELECT AVG(Sales) AS Average_Sales
FROM train;
-- Max Sales
SELECT MAX(Sales) AS Highest_Sales
FROM train;
-- Min Sales
SELECT MIN(Sales) AS Lowest_Sales
FROM train;
-- Sales By Category
SELECT Category,
SUM(Sales) AS Total_Sales
FROM train
GROUP BY Category;
-- Sales By Region
SELECT Region,
SUM(Sales) AS Total_Sales
FROM train
GROUP BY Region;
-- state-wise-Sales
SELECT State,
SUM(Sales) AS Total_Sales
FROM train
GROUP BY State
ORDER BY Total_Sales DESC;

describe train;
-- Top 5 Customers
SELECT `Customer Name`,
SUM(Sales) AS Total_Sales
FROM train
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 5;
-- Top 10 Product Name
SELECT `Product Name`,
SUM(Sales) AS Total_Sales
FROM train
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;
