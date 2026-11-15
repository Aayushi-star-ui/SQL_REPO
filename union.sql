USE student;
SELECT * FROM orders;
SELECT * FROM student_info;

-- union - REMOVE DUPLICATED AND NOT FAST
SELECT student_name , email FROM student_info
UNION
SELECT name , city FROM orders;

-- UNION ALL - SHOW ALL DATA WITH FAST SPEED and no remove any same type of data
SELECT student_name , email FROM student_info
UNION ALL
SELECT name , city FROM orders;

-- ORDER BY
SELECT customer_name, city, amount
FROM online_orders
UNION ALL
SELECT customer_name, city, amount
FROM offline_orders
ORDER BY amount DESC;