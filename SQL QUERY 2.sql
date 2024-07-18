---7 Write a query to display the customer_id, Customer_First_Name, Customer_Last_Name, and a new column named customer_region that shows "Local" if the country is 'USA', and "International" otherwise.


SELECT 
    ID AS customer_id,
    firstName,
    lastName,
    CASE 
        WHEN country = 'USA' THEN 'Local'
        ELSE 'International'
    END AS customer_region
FROM 
    CUSTOMER;

select *
from customer;

---8 Aggregate Function
select *
from products
where id NOT IN (select distinct product_id from sales);

---9  Group Case Function
SELECT 
    ID AS customer_id,
    firstName,
    lastName,
    CASE 
        WHEN country = 'USA' THEN 'Local'
        ELSE 'International'
    END AS customer_region
FROM 
    CUSTOMER;

select *
from customer;

-- 10 View Function
CREATE VIEW total_quantity_product AS (
    SELECT id, SUM(QUANTITY_ORDERED) AS total_quantity
    FROM orders
    GROUP BY id
    ORDER BY total_quantity ASC
); 
SELECT id, SUM(QUANTITY_ORDERED) AS total_quantity
FROM orders
GROUP BY id
ORDER BY total_quantity ASC;
