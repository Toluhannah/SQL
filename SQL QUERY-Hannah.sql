---what are the total figures for each product?
Select product_id, sum(sales) AS total_sales
from sales
Group by product_id;

 ---2 how can the store find products that has never been purhased by the customers?
select *
from products
where id NOT IN (select distinct product_id from sales);


----3 From the tables, identify the top-selling products for each month 
WITH MonthlySales AS (
    SELECT product_id, DATE_TRUNC('month', sales_date) AS month, SUM(sales) AS total_sales
    FROM sales
    GROUP BY product_id, month
)
SELECT product_id, month, total_sales
FROM MonthlySales
WHERE total_sales = (SELECT MAX(total_sales) FROM MonthlySales m WHERE m.month = MonthlySales.month);

---4 Find the number of products that have been purchased by more than 50 customers

SELECT product_id, COUNT(DISTINCT customer_id) AS unique_customers
FROM sales
GROUP BY product_id
HAVING COUNT(DISTINCT customer_id) > 50;

----5  Total number of customers who have made purchases exceeding $1000 in a single transaction
SELECT COUNT (DISTINCT customer_id)
FROM sales
WHERE sales > 1000;

---- 6 what is the total sales for each product category 
SELECT p.product_category, SUM(s.sales) AS total_sales
FROM sales s
JOIN products p ON s.product_id = p.id
GROUP BY p.product_category;
