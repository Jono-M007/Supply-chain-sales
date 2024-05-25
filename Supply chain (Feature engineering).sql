-- Addition of the following columns : cogs , total revenue , gross margin
ALTER TABLE supply
ADD cogs DECIMAL(6,2) ;

ALTER TABLE supply
ADD total_revenue DECIMAL(6,2) ;

ALTER TABLE supply
ADD gross_margin  DECIMAL(6,2);

SELECT * FROM supplychain.supply;

-- Calculations of cogs , total_revenue and gross_margin and populating the table
USE supplychain;
DESCRIBE supply;

 UPDATE supply
 SET cogs = (unit_cost * order_quantity);
 
 UPDATE supply
 SET total_revenue = (unit_price * order_quantity);
 
 UPDATE supply
 SET gross_margin = (total_revenue - cogs);
