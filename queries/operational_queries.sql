-- ==========================================================
-- OPERATIONAL QUERIES
-- ==========================================================

-- 1. get all shipments made by atlas freight
SELECT s.shipments_id, s.tracking_number, s.cargo_type, s.origin_hub, s.destination_hub, s.dispatch_date
FROM shipments s
JOIN shipping_companies sc ON s.company_id = sc.shipping_company_id
WHERE sc.company_name = 'Atlas Freight';

-- 2. find out who is working on shipment number 1
SELECT p.personnel_id, p.first_name, p.last_name, p.role_rank, w.warehouse_name
FROM shipment_personnel sp
JOIN personnel p ON sp.personnel_id = p.personnel_id
JOIN warehouses w ON sp.warehouse_id = w.warehouse_id
WHERE sp.shipment_id = 1;

-- 3. look up john smith's account info and address
SELECT client_id, first_name, last_name, billing_address, annual_spend, account_number
FROM clients
WHERE last_name = 'Smith' AND first_name = 'John';

-- 4. check the inspection history for vehicle 2
SELECT qcl.log_id, qc.check_name, qcl.check_date, qcl.check_result, qcl.inspector_id
FROM quality_checks_log qcl
JOIN quality_checks qc ON qcl.test_section_id = qc.check_id
WHERE qcl.vehicle_id = 2;

-- 5. show all meetings for someone with the last name nikolaou
SELECT briefing_id, personnel_surname, briefing_date, briefing_subject
FROM personnel_briefings
WHERE personnel_surname = 'Nikolaou'
ORDER BY briefing_date ASC;
