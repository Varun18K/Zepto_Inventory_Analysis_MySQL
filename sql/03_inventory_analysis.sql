-- ============================================
-- STEP 3: Inventory Analysis
-- ============================================

-- Out-of-stock vs available products
SELECT 
    out_of_stock,
    COUNT(*) AS product_count
FROM zepto_inventory
GROUP BY out_of_stock;

-- Low stock, high value products
SELECT 
    product_name,
    available_quantity,
    mrp
FROM zepto_inventory
WHERE available_quantity < 10
ORDER BY mrp DESC;

-- Weight-based product segmentation
SELECT
    product_name,
    weight_in_grams,
    CASE
        WHEN weight_in_grams < 1000 THEN 'Low'
        WHEN weight_in_grams < 5000 THEN 'Medium'
        ELSE 'Bulk'
    END AS weight_category
FROM zepto_inventory;
