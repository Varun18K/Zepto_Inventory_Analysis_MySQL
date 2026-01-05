

-- Remove invalid price records
DELETE FROM zepto_inventory
WHERE mrp = 0;

-- Convert prices from paise to rupees
UPDATE zepto_inventory
SET 
    mrp = mrp / 100.0,
    selling_price = selling_price / 100.0;

-- Handle missing stock values
UPDATE zepto_inventory
SET available_quantity = 0
WHERE available_quantity IS NULL;
