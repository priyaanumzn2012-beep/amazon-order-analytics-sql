/* =========================================
   DATA CLEANING & STANDARDIZATION
   ========================================= */

/* 1. Remove NULL or invalid quantities */
DELETE FROM orders
WHERE quantity IS NULL
   OR quantity <= 0;

/* 2. Standardize order status values */
UPDATE orders
SET status =
    CASE
        WHEN LOWER(status) LIKE 'deliv%' THEN 'Delivered'
        WHEN LOWER(status) LIKE 'return%' THEN 'Returned'
        WHEN LOWER(status) LIKE 'cancel%' THEN 'Cancelled'
        ELSE status
    END;

/* 3. Trim unwanted spaces from text columns */
UPDATE orders
SET warehouse = TRIM(warehouse),
    defect_type = TRIM(defect_type),
    product_id = TRIM(product_id);

/* 4. Handle missing defect types */
UPDATE orders
SET defect_type = 'No Defect'
WHERE defect_type IS NULL;

/* 5. Ensure date consistency */
DELETE FROM orders
WHERE order_date IS NULL;
