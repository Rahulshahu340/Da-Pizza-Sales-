6. Sales by Pizza Category Query
To calculate the Percentage of Sales by Pizza Category, you would group the data by pizza_category and then calculate the percentage of total sales that each category contributes. Assuming there's a pizzas table with a category column and a total_price column in order_items, the query would look like this:

sql qyuery:

---------------------------------------------------
SELECT 
    p.category,
    SUM(oi.total_price) AS category_sales,
    (SUM(oi.total_price) / (SELECT SUM(total_price) FROM order_items)) * 100 AS percentage_sales
FROM order_items oi
JOIN pizzas p ON oi.pizza_id = p.pizza_id
GROUP BY p.category;

-------------------------------------------------
Explanation:

The JOIN connects the order_items table with the pizzas table on the pizza_id field to get the pizza category for each order.
SUM(oi.total_price) calculates the total sales per category.
The subquery (SELECT SUM(total_price) FROM order_items) calculates the total sales across all categories, and the division gives the percentage contribution of each category.
percentage_sales shows the percentage of total sales from each pizza category.