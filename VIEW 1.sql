--FIND THE AVERAGE SALES FOR EACH PRODUCT

SELECT product_id, Avg(sales) as average_sales
FROM SALES
Group by product_id
order by average_sales ASC;

--COMMENT; CREATING VIEW FOR THE END USER
create view average_sales_product as (
select product_id, Avg(sales) as average_sales
from sales
Group by product_id
order by average_sales ASC);



---Excecuting View
select *
from average_sales_product