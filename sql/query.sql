SELECT driver_id, COUNT(*) AS total_shipments
FROM shipment_product
WHERE EXTRACT(MONTH FROM sending_time) = 5 AND EXTRACT(YEAR FROM sending_time) = 2023
GROUP BY driver_id
ORDER BY total_shipments DESC
LIMIT 2;


SELECT product_id, COUNT(*) AS total_shipments
FROM shipment_product
WHERE EXTRACT(MONTH FROM sending_time) = 5 AND EXTRACT(YEAR FROM sending_time) = 2023
GROUP BY product_id
ORDER BY total_shipments DESC
LIMIT 10;


SELECT *
FROM shipment
WHERE delivered_time IS NULL;