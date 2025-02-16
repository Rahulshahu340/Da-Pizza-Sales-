1. Total Revenue Query
To calculate Total Revenue, the query would sum the price of all pizza orders. Assuming there is a table orders where each order has an order_id, order_date, and total_price, the query might look like this:
--------------------------------------
SQl Query :

SELECT SUM(total_price) AS total_revenue
FROM orders;

----------------------------------------------
Explanation:

SUM(total_price) adds up the total_price column for all rows in the orders table to give the total revenue for all pizza orders.
total_revenue is the alias used to name the result.