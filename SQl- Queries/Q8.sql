8. Top 5 Best Sellers by Revenue Query
To find the Top 5 Best Sellers by Revenue, you would group the data by pizza_id and order the results by total revenue in descending order:

-----------sql query-------------------

SELECT 
    p.pizza_name,
    SUM(oi.total_price) AS total_revenue
FROM order_items oi
JOIN pizzas p ON oi.pizza_id = p.pizza_id
GROUP BY p.pizza_name
ORDER BY total_revenue DESC
LIMIT 5;

-----------------------------------------
Explanation:

SUM(oi.total_price) calculates the total revenue for each pizza.
ORDER BY total_revenue DESC sorts the pizzas by total revenue in descending order.
LIMIT 5 ensures only the top 5 best-selling pizzas are shown.