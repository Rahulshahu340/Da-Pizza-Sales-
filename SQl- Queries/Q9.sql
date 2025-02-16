9. Bottom 5 Best Sellers by Revenue Query
To find the Bottom 5 Best Sellers by Revenue, the query is similar to the previous one but orders the results in ascending order:

sql
Copy
SELECT 
    p.pizza_name,
    SUM(oi.total_price) AS total_revenue
FROM order_items oi
JOIN pizzas p ON oi.pizza_id = p.pizza_id
GROUP BY p.pizza_name
ORDER BY total_revenue ASC
LIMIT 5;
Explanation:

The ORDER BY total_revenue ASC sorts the pizzas by total revenue in ascending order.
LIMIT 5 ensures only the 5 least-performing pizzas by revenue are shown.