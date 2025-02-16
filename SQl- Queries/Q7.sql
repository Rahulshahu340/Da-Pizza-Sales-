7. Sales by Pizza Size Query
To calculate the Percentage of Sales by Pizza Size, the query is similar to the previous one but grouped by the pizza size instead of category. Assuming there's a size column in the pizzas table, the query would be:
--------------------------------
sql query- 7

SELECT 
    p.size,
    SUM(oi.total_price) AS size_sales,
    (SUM(oi.total_price) / (SELECT SUM(total_price) FROM order_items)) * 100 AS percentage_sales
FROM order_items oi
JOIN pizzas p ON oi.pizza_id = p.pizza_id
GROUP BY p.size;
-------------------------------------------------

Explanation:

This query groups the data by pizza size and calculates the total sales and percentage contribution of each pizza size.