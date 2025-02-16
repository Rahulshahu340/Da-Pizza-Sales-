5. Average Pizzas per Order Query
To calculate the Average Pizzas per Order, the query would first calculate the total pizzas sold and then divide by the total number of orders. This requires combining information from the order_items and orders tables:
-------------------------------
sql query:

SELECT 
    (SUM(quantity) / COUNT(DISTINCT o.order_id)) AS average_pizzas_per_order
FROM order_items oi
JOIN orders o ON oi.order_id = o.order_id;
------------------------------------------------------
Explanation:

SUM(quantity) gives the total number of pizzas sold (as in the "Total Pizzas Sold" query).
COUNT(DISTINCT o.order_id) counts the distinct order IDs, representing the total number of orders.
The division of the total pizzas by the total orders gives the Average Pizzas per Order.
The JOIN operation is used to connect the order_items table with the orders table on the order_id field.
