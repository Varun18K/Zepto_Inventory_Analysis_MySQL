-- Revenue by Category
SELECT
    category,
    SUM(selling_price * available_quantity) AS total_revenue
FROM zepto_inventory
GROUP BY category
ORDER BY total_revenue DESC;

-- Top Discounted Products
SELECT
    product_name,
    discount_percent
FROM zepto_inventory
WHERE discount_percent >= 50
ORDER BY discount_percent DESC
LIMIT 10;

-- High MRP Products with Low Discounts
SELECT
    product_name,
    mrp,
    discount_percent
FROM zepto_inventory
WHERE mrp > 500
  AND discount_percent < 10;

-- Average MRP by Category
SELECT
    category,
    ROUND(AVG(mrp), 2) AS average_mrp
FROM zepto_inventory
GROUP BY category
ORDER BY average_mrp DESC;

-- Average Selling Price by Category
SELECT
    category,
    ROUND(AVG(selling_price), 2) AS average_selling_price
FROM zepto_inventory
GROUP BY category
ORDER BY average_selling_price DESC;

-- Top 10 Highest Revenue Generating Products
SELECT
    product_name,
    category,
    available_quantity,
    selling_price,
    ROUND(selling_price * available_quantity, 2) AS estimated_revenue
FROM zepto_inventory
ORDER BY estimated_revenue DESC
LIMIT 10;

-- Top 10 Products with Highest MRP
SELECT
    product_name,
    category,
    mrp
FROM zepto_inventory
ORDER BY mrp DESC
LIMIT 10;

-- Top 10 Products with Highest Selling Price
SELECT
    product_name,
    category,
    selling_price
FROM zepto_inventory
ORDER BY selling_price DESC
LIMIT 10;

-- Price Difference Between MRP and Selling Price
SELECT
    product_name,
    mrp,
    selling_price,
    ROUND(mrp - selling_price, 2) AS savings
FROM zepto_inventory
ORDER BY savings DESC;

-- Categories Offering the Highest Average Discount
SELECT
    category,
    ROUND(AVG(discount_percent), 2) AS average_discount
FROM zepto_inventory
GROUP BY category
ORDER BY average_discount DESC;

-- Products with Selling Price Greater Than ₹500
SELECT
    product_name,
    category,
    selling_price
FROM zepto_inventory
WHERE selling_price > 500
ORDER BY selling_price DESC;

-- Products Having MRP More Than Double the Selling Price
SELECT
    product_name,
    mrp,
    selling_price
FROM zepto_inventory
WHERE mrp >= selling_price * 2
ORDER BY mrp DESC;

-- Revenue Contribution by Stock Status
SELECT
    out_of_stock,
    ROUND(SUM(selling_price * available_quantity), 2) AS revenue
FROM zepto_inventory
GROUP BY out_of_stock;
