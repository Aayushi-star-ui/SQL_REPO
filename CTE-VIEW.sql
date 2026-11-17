-- CTE - COMMON TABLE EXPRESSION
USE ecom;
SELECT * FROM customers;

WITH customers_sales AS (
SELECT customer_id , customer_name, SUM(price) AS total_price FROM customers GROUP BY customer_id,customer_name )
SELECT * FROM customers_sales WHERE total_price > 3000;

CREATE VIEW completed_order AS 
SELECT customer_id , customer_name , price , payment_mode , order_status FROM customers
WHERE order_status = 'Completed';

SELECT * FROM completed_order;