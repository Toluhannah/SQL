--- find the total purchase amounts and average order of customers based on their buying habit 

SELECT c.id AS customer_id,c.firstname,c.lastname, SUM(s.sales) AS total_sales, COUNT(s.id) AS total_orders, AVG(s.sales) AS average_order_value
FROM customer c
JOIN sales s ON c.id = s.customer_id
GROUP BY c.id, c.firstname, c.lastname
ORDER BY total_sales DESC;

--COMMENT; CREATING VIEW FOR THE END USER

CREATE VIEW customer_segments AS (
SELECT c.id AS customer_id,c.firstname,c.lastname, SUM(s.sales) AS total_sales, COUNT(s.id) AS total_orders, AVG(s.sales) AS average_order_value
FROM customer c
JOIN sales s ON c.id = s.customer_id
GROUP BY c.id, c.firstname, c.lastname
ORDER BY total_sales DESC;
)


