-- How much revenue did the company generate ?
SELECT SUM(total_revenue)
FROM supply;

-- What was the total cost of goods sold in the dataset ?
SELECT SUM(cogs)
FROM supply;

-- How much gross profit did the company generate ?
SELECT SUM(gross_margin)
FROM supply;

---- Anaysis on the different sales channel----
-- How many units was sold per the sales channel?
SELECT sales_channel, SUM(order_quantity) AS channel_units
FROM supply 
GROUP BY sales_channel
ORDER BY channel_units DESC;

-- What was the distribution of revenue per sales channel ?
SELECT sales_channel , SUM(total_revenue) AS channel_revenue
FROM supply
GROUP BY sales_channel 
ORDER BY channel_revenue DESC;

-- How much gross profit did the company generate through the various sales channel ?
SELECT sales_channel , SUM(gross_margin) AS channel_profit
FROM supply 
GROUP BY sales_channel
ORDER BY channel_profit DESC;

--- Anaylsis on the product mix ---
-- How many unique products do we have in the dataset ?
SELECT DISTINCT product_id
FROM supply;

-- How much units did we sell of each product ?
SELECT product_id , SUM(order_quantity) AS units_sold
FROM supply
GROUP BY product_id
ORDER BY units_sold DESC;

-- How much revenue did each product bring in ?
SELECT product_id , SUM(total_revenue) AS units_revenue
FROM supply
GROUP BY product_id
ORDER BY units_revenue DESC;

-- Which product generates the highest gross profit ?
SELECT product_id, SUM(gross_margin) AS unit_margin
FROM supply
GROUP BY product_id
ORDER BY unit_margin DESC;

--- Analyse on the performance of the sales team --
-- How many sales team does the compnay employ ?
SELECT DISTINCT(salesteam_id)
FROM supply;

-- Sales peformance from each team --
SELECT salesteam_id , COUNT(order_number) AS team_sales
FROM supply
GROUP BY salesteam_id
ORDER BY team_sales DESC;

-- The number of units sold by each team --
SELECT salesteam_id , COUNT(order_quantity) AS team_units
FROM supply
GROUP BY salesteam_id
ORDER BY team_units DESC;

-- The top 5 revenue generating sales team 
SELECT salesteam_id , SUM(total_revenue) AS team_revenue
FROM supply
GROUP BY salesteam_id
ORDER BY team_revenue DESC
LIMIT 5;


--- Other exploratory data analysis---

-- What was the revenue generation per warehouse?
SELECT warehouse_code , SUM(total_revenue) as warehouse_revenue
FROM supply
GROUP BY warehouse_code
ORDER BY warehouse_revenue DESC;

-- Who are the top 5 customers 
SELECT customer_id , SUM(total_revenue) AS customer_revenue , SUM(gross_margin) AS customer_profit
FROM supply
GROUP BY customer_id
ORDER BY customer_revenue
LIMIT 5;


