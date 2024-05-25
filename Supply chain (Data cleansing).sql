SELECT * FROM supplychain.supply LIMIT 1000;

-- The number of records in the the supply table
SELECT COUNT(*) AS row_count
FROM supply;

-- Checking if there are duplicate order numbers
SELECT DISTINCT COUNT(order_number) AS number_of_transaction
FROM supply;

-- Selecting all warehouse
SELECT DISTINCT(warehouse_code)
FROM supply;

--------------- Timelines vertification------------------------------ 
-- procured date verification --
SELECT procured_date
FROM supply
ORDER BY procured_date ASC;

SELECT procured_date
FROM supply
ORDER BY procured_date DESC;

-- Updating the table to remove procured dates which are inaccurate
DELETE FROM supply
WHERE procured_date = '1931-12-17';

-- order date verification --
SELECT order_date
FROM supply
ORDER BY order_date ASC;

SELECT order_date
FROM supply
ORDER BY order_date DESC;

DELETE FROM supply
WHERE order_date LIKE '19%';

-- ship date verification --
SELECT ship_date
FROM supply
ORDER BY ship_date ASC;

SELECT ship_date
FROM supply
ORDER BY ship_date DESC;

DELETE FROM supply
WHERE ship_date LIKE '19%';

-- delivery day verification--
SELECT delivery_date
FROM supply
ORDER BY delivery_date ASC;

DELETE FROM supply
WHERE delivery_date LIKE '19%';

