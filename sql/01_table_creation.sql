

CREATE DATABASE IF NOT EXISTS zepto_inventory;
USE zepto_inventory;

CREATE TABLE zepto_inventory (
    sku_id INT AUTO_INCREMENT PRIMARY KEY,
    category VARCHAR(100),
    product_name VARCHAR(255) NOT NULL,
    mrp DECIMAL(10,2),
    discount_percent DECIMAL(5,2),
    available_quantity INT,
    selling_price DECIMAL(10,2),
    weight_in_grams INT,
    out_of_stock BOOLEAN,
    quantity INT
);
