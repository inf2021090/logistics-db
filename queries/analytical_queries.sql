-- ==========================================================
-- ANALYTICAL QUERIES
-- ==========================================================

-- 1. count how many shipments each company has
SELECT sc.company_name, COUNT(s.shipments_id) AS total_shipments
FROM shipping_companies sc
LEFT JOIN shipments s ON sc.shipping_company_id = s.company_id
GROUP BY sc.shipping_company_id, sc.company_name
ORDER BY total_shipments DESC;

-- 2. see the pass vs fail percentage for all quality checks
SELECT check_result, COUNT(*) AS total_count,
       ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM quality_checks_log), 2) AS percentage
FROM quality_checks_log
GROUP BY check_result;

-- 3. get general stats about clients like total revenue and average age
SELECT 
    COUNT(client_id) AS total_clients,
    AVG(age) AS average_client_age,
    SUM(annual_spend) AS total_annual_revenue,
    AVG(annual_spend) AS average_annual_spend
FROM clients;

-- 4. find which warehouses handle the most shipments
SELECT w.warehouse_name, w.location_address, COUNT(sp.shipment_personnel_id) AS total_assignments
FROM warehouses w
LEFT JOIN shipment_personnel sp ON w.warehouse_id = sp.warehouse_id
GROUP BY w.warehouse_id, w.warehouse_name, w.location_address
ORDER BY total_assignments DESC;

-- 5. find out which staff members went to the most briefings
SELECT personnel_surname, COUNT(briefing_id) AS total_briefings_attended
FROM personnel_briefings
GROUP BY personnel_surname
ORDER BY total_briefings_attended DESC;
