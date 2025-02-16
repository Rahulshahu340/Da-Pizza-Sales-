4. Total Orders Query
To count the Total Orders, the query would count the distinct order IDs from the orders table:
-----------------------------
sql query: 
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM orders;
----------------------------------------
Explanation:

COUNT(DISTINCT order_id) counts the number of unique order_ids in the orders table to determine the total number of orders.
total_orders is the alias for this count