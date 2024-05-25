-- Creating the supply chain database
CREATE DATABASE IF NOT EXISTS supplychain;

-- Creating the supply chain table
CREATE TABLE IF NOT EXISTS supply (
	order_number VARCHAR(30) NOT NULL PRIMARY KEY,
    sales_channel VARCHAR(15) NOT NULL,
    warehouse_code  VARCHAR(15) NOT NULL,
    procured_date DATE NOT NULL,
    currency_code VARCHAR(10) NOT NULL,
    order_date DATE NOT NULL,
    ship_date DATE NOT NULL,
    delivery_date DATE NOT NULL,
    salesteam_id VARCHAR(5) NOT NULL,
    customer_id VARCHAR(5) NOT NULL,
    store_id VARCHAR(5) NOT NULL,
    product_id VARCHAR(5) NOT NULL,
    order_quantity INT NOT NULL,
    discount_applied FLOAT(11,2) NOT NULL,
    unit_cost DECIMAL(12,2),
    unit_price DECIMAL(12,2)
    );
    
    
    
