3. Total Pizzas Sold Query
To determine the Total Pizzas Sold, assuming there's a table order_items with columns order_id, pizza_id, and quantity, the query would sum up the quantities of pizzas ordered:

-----------------------------------------------

SELECT SUM(quantity) AS total_pizzas_sold
FROM order_items;
--------------------------------------------------


SUM(quantity) adds up all the quantities of pizzas from the order_items table, giving the total number of pizzas sold.
total_pizzas_sold is the alias for this summed value.