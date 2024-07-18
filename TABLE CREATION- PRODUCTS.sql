CREATE TABLE PRODUCTS
(
	id int primary key,
	product_code varchar(50), 
	product_name varchar(100),
	product_category varchar(40)
);


INSERT INTO PRODUCTS
VALUES (1,	'S10_1949',	'Classic Cars',	'Road'),
(2,	'S10_1678',	'Motorcycles',	'Road'),
(3,	'S18_1662',	'Planes',	'Air'),
(4,	'S18_3029',	'Ships',	'Water'),
(5,	'S18_3259',	'Trains',	'Rail'),
(6,	'S12_1666',	'Trucks and Buses',	'Road'),
(7,	'S18_1342',	'Vintage Cars',	'Road'),
(8,	'S18_3136',	'Vintage Cars',	'Trains'),
(9,	'S18_4522',	'Vintage Cars',	'Trains'),
(10,	'S24_2011',	'Ships',	'Water'),
(11,	'S24_3151',	'Vintage Cars',	'Trains'),
(12,	'S24_3420',	'Vintage Cars',	'Trains'),
(13,	'S32_2206',	'Vintage Cars',	'Trains');



select *
from products;