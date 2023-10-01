SELECT driver_id, COUNT(*) AS total_shipments
FROM app."shipment_product" AS sp
JOIN app."shipment" AS s
ON sp.shipment_id = s.id
WHERE EXTRACT(MONTH FROM s.sending_time) = 5 AND EXTRACT(YEAR FROM s.sending_time) = 2023
GROUP BY driver_id
ORDER BY total_shipments DESC
LIMIT 2;


SELECT sp.product_id, COUNT(*) AS total_shipments
FROM app."shipment_product" AS sp
JOIN app."shipment" AS s
ON sp.shipment_id = s.id
WHERE EXTRACT(MONTH FROM s."sending_time") = 5 AND EXTRACT(YEAR FROM s."sending_time") = 2023
GROUP BY sp.product_id
ORDER BY total_shipments DESC
LIMIT 10;


SELECT *
FROM shipment
WHERE delivered_time IS NULL;
