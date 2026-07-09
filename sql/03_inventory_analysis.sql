-- Out-of-stock vs Available Products
SELECT
    out_of_stock,
    COUNT(*) AS product_count
FROM zepto_inventory
GROUP BY out_of_stock;

-- Low Stock, High Value Products
SELECT
    product_name,
    available_quantity,
    mrp
FROM zepto_inventory
WHERE available_quantity < 10
ORDER BY mrp DESC;

-- Weight-Based Product Segmentation
SELECT
    product_name,
    weight_in_grams,
    CASE
        WHEN weight_in_grams < 1000 THEN 'Low'
        WHEN weight_in_grams < 5000 THEN 'Medium'
        ELSE 'Bulk'
    END AS weight_category
FROM zepto_inventory;

-- Total Products in Each Category
SELECT
    category,
    COUNT(*) AS total_products
FROM zepto_inventory
GROUP BY category
ORDER BY total_products DESC;

-- Total Inventory Available by Category
SELECT
    category,
    SUM(available_quantity) AS total_inventory
FROM zepto_inventory
GROUP BY category
ORDER BY total_inventory DESC;

-- Average Selling Price by Category
SELECT
    category,
    ROUND(AVG(selling_price), 2) AS avg_selling_price
FROM zepto_inventory
GROUP BY category
ORDER BY avg_selling_price DESC;

-- Top 10 Most Expensive Products
SELECT
    product_name,
    category,
    mrp
FROM zepto_inventory
ORDER BY mrp DESC
LIMIT 10;

-- Top 10 Cheapest Products
SELECT
    product_name,
    category,
    selling_price
FROM zepto_inventory
ORDER BY selling_price ASC
LIMIT 10;

-- Products with More Than 50% Discount
SELECT
    product_name,
    category,
    mrp,
    selling_price,
    discount_percent
FROM zepto_inventory
WHERE discount_percent > 50
ORDER BY discount_percent DESC;

-- Estimated Inventory Value by Category
SELECT
    category,
    ROUND(SUM(selling_price * available_quantity), 2) AS inventory_value
FROM zepto_inventory
GROUP BY category
ORDER BY inventory_value DESC;

-- Top 10 Products with Highest Stock
SELECT
    product_name,
    category,
    available_quantity
FROM zepto_inventory
ORDER BY available_quantity DESC
LIMIT 10;

-- Inventory Status Classification
SELECT
    product_name,
    available_quantity,
    CASE
        WHEN available_quantity = 0 THEN 'Out of Stock'
        WHEN available_quantity < 20 THEN 'Low Stock'
        WHEN available_quantity < 100 THEN 'Medium Stock'
        ELSE 'High Stock'
    END AS stock_status
FROM zepto_inventory;

-- Average Discount by Category
SELECT
    category,
    ROUND(AVG(discount_percent), 2) AS average_discount
FROM zepto_inventory
GROUP BY category
ORDER BY average_discount DESC;

-- Products Selling Below ₹100
SELECT
    product_name,
    category,
    selling_price
FROM zepto_inventory
WHERE selling_price < 100
ORDER BY selling_price;

-- Potential Revenue by Category
SELECT
    category,
    ROUND(SUM(selling_price * available_quantity), 2) AS potential_revenue
FROM zepto_inventory
GROUP BY category
ORDER BY potential_revenue DESC;
