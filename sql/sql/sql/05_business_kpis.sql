/* =========================================
   BUSINESS KPIs – AMAZON STYLE
   ========================================= */

-- 1. Total Orders
SELECT COUNT(*) AS total_orders
FROM orders;

-- 2. Orders by Status (Fulfillment Health)
SELECT status,
       COUNT(*) AS order_count,
       ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM orders), 2) AS percentage
FROM orders
GROUP BY status;

-- 3. Order Aging KPI (Backlog Risk)
SELECT order_age,
       COUNT(*) AS orders
FROM orders
GROUP BY order_age;

-- 4. Warehouse Load Distribution
SELECT warehouse,
       COUNT(*) AS total_orders
FROM orders
GROUP BY warehouse
ORDER BY total_orders DESC;

-- 5. Warehouse Cancellation & Return Analysis
SELECT warehouse,
       status,
       COUNT(*) AS order_count
FROM orders
WHERE status IN ('Cancelled', 'Returned')
GROUP BY warehouse, status;

-- 6. Defect Rate by Warehouse (Quality KPI)
SELECT warehouse,
       COUNT(defect_type) AS defect_orders
FROM orders
WHERE defect_type IS NOT NULL
GROUP BY wa
