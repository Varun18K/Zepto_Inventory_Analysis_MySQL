

-- Revenue by category
SELECT
    category,
    SUM(selling_price * available_quantity) AS total_revenue
FROM zepto_inventory
GROUP BY category
ORDER BY total_revenue DESC;

-- Top discounted products
SELECT
    product_name,
    discount_percent
FROM zepto_inventory
WHERE discount_percent >= 50
ORDER BY discount_percent DESC
LIMIT 10;

-- High MRP products with low discounts
SELECT
    product_name,
    mrp,
    discount_percent
FROM zepto_inventory
WHERE mrp > 500
  AND discount_percent < 10;
