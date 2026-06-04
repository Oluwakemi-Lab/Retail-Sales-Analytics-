Select *
From Sample_Superstore

SELECT *
FROM Sample_Superstore
WHERE Sales IS NULL
OR Profit IS NULL
OR Customer_Name IS NULL;

DELETE FROM Sample_Superstore
WHERE Profit IS NULL;


SELECT
	ORDER_ID,
	PRODUCT_ID,
	COUNT(*) AS duplicate_count
from Sample_Superstore
GROUP BY Order_id, Product_id
Having Count(*) > 1

SELECT *
FROM Sample_Superstore
WHERE Order_ID = 'US-2014-150119'
AND Product_ID = 'FUR-CH-10002965';

SELECT
	Order_ID,
	Product_ID,
	Customer_ID,
	Customer_Name,
	Order_Date,
	Ship_Date,
	Ship_Mode,
	Segment,
	Country,
	City,
	State,
	Postal_Code,
	Region,
	Category,
	Sub_Category,
	Product_Name,
	Sales,
	Quantity,
	Discount,
	Profit,
	COUNT(*) AS DUPLICATE_COUNT
FROM Sample_Superstore
GROUP BY
	Order_ID,
	Product_ID,
	Customer_ID,
	Customer_Name,
	Order_Date,
	Ship_Date,
	Ship_Mode,
	Segment,
	Country,
	City,
	State,
	Postal_Code,
	Region,
	Category,
	Sub_Category,
	Product_Name,
	Sales,
	Quantity,
	Discount,
	Profit
HAVING COUNT (*) > 1;

SELECT *
INTO superstore_clean
From Sample_Superstore;

SELECT *
FROM superstore_clean
WHERE Row_ID = 3407;

DELETE FROM superstore_clean
WHERE Row_ID = 3407

SELECT 
	ORDER_DATE,
	SHIP_DATE
FROM superstore_clean

SELECT
ORDER_ID,
DATEDIFF(DAY, ORDER_DATE, SHIP_DATE) AS Shipping_Days
FROM superstore_clean;

SELECT
	YEAR(ORDER_DATE)
		AS ORDER_YEAR
FROM superstore_clean

SELECT
	MONTH(ORDER_DATE)
		AS ORDER_MONTH
FROM superstore_clean

SELECT
	ROUND(SUM(SALES),2) AS Total_Revenue,
	ROUND(SUM(Profit),2) AS Total_Profit,
	SUM(QUANTITY) AS Units_Sold
from superstore_clean;

SELECT
	REGION,
	ROUND(SUM(Sales),2) AS Revenue,
	ROUND(SUM(Profit),2) AS Profit
FROM superstore_clean
Group By Region
ORDER BY REVENUE DESC;

SELECT
CATEGORY,
	ROUND(SUM(SALES),2) AS Revenue,
	ROUND(SUM(PROFIT), 2) AS Profit
FROM superstore_clean
GROUP BY Category
ORDER BY PROFIT DESC;

SELECT TOP 10
	PRODUCT_NAME,
	ROUND (SUM(SALES), 2) AS Revenue
FROM superstore_clean
GROUP BY Product_Name
ORDER BY Revenue DESC

SELECT
	DISCOUNT,
	ROUND(AVG(PROFIT), 2) AS AVG_PROFIT
FROM superstore_clean
GROUP BY Discount
ORDER BY Discount

SELECT
	SEGMENT,
	ROUND(SUM(Sales), 2) AS Revenue,
	ROUND(avg(Sales), 2) AS Avg_Order_Value
FROM superstore_clean
GROUP BY Segment
Order By Revenue DESC;

SELECT
	YEAR(ORDER_DATE) AS [YEAR],
	DATENAME(Month, ORDER_DATE) AS [MONTH],
	ROUND(SUM(SALES), 2) AS REVENUE
FROM superstore_clean
GROUP BY YEAR(Order_Date),
	DATENAME(month, Order_Date);


SELECT
Ship_Mode,
	ROUND(
		AVG(DATEDIFF(DAY, ORDER_DATE, SHIP_DATE)),2)
AS Avg_Shipping_Days
FROM superstore_clean
GROUP BY Ship_Mode;




