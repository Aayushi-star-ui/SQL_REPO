USE meesho;
SELECT * FROM orders;
-- single count 
SELECT customer_city , COUNT(*) AS total_orders 
FROM orders
GROUP BY customer_city;
-- sum
SELECT customer_city ,SUM(price_per_unit) AS total_rev
FROM orders
GROUP BY customer_city;
-- max
SELECT customer_city ,MAX(quantity) AS quantity_of_pro
FROM orders
GROUP BY customer_city;
-- count
SELECT customer_city , category , COUNT(*) AS total 
FROM orders
GROUP BY customer_city , category;
-- avg
SELECT customer_city , AVG(price_per_unit) AS avg_price
FROM orders
group by customer_city;
-- MULTI COLUMN
SELECT customer_city , category , SUM(quantity * price_per_unit) AS sum
FROM orders
GROUP BY customer_city , category;

-- where
SELECT customer_city , SUM(price_per_unit) as total_rev
FROM orders
WHERE customer_city IN ('delhi' , 'chennai')
GROUP BY customer_city; 

-- HAVING CLAUSE - IMP
SELECT customer_city , SUM(quantity) AS total_quantity
FROM orders
GROUP BY customer_city
HAVING SUM(quantity) >= 5;