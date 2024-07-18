
--- Find the total quantity ordered
SELECT id, SUM(QUANTITY_ORDERED) AS total_quantity
FROM orders
GROUP BY id
ORDER BY total_quantity ASC;


---Creating view for the end user
CREATE VIEW total_quantity_product AS (
    SELECT id, SUM(QUANTITY_ORDERED) AS total_quantity
    FROM orders
    GROUP BY id
    ORDER BY total_quantity ASC
); 

--- Execute the view
Select *
from total_quantity_product;