WITH cte AS
(
SELECT 
a.Product
, a.Category
, a.Brand
, a.Description
, a.Cost_Price
, a.Sale_Price
, a.Image_url
, b.Date
, b.Customer_Type
, b.Discount_Band
, b.Units_Sold
, (sale_price * units_sold) AS revenue
, (cost_price * units_sold) AS total_cost
, FORMAT(date, 'MMMM') AS month
, FORMAT(date, 'yyyy') AS year
FROM product_data AS a
JOIN product_sales AS b
ON a.Product_ID = b.Product
)

SELECT 
* 
, (1- discount*1.0/100) * revenue AS discount_revenue
FROM cte AS a
JOIN discount_data AS b
ON a.Discount_Band = b.Discount_Band AND a.month = b.month


