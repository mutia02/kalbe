CREATE OR REPLACE PROCEDURE add_product_to_shipment(
    shipment_id VARCHAR,
    product_id INT,
    qty INT,
    unit VARCHAR(10),
    store_id INT,
    operator_id INT,
    vehicle_no_polisi VARCHAR(9),
    driver_id INT,
    codriver_id INT
)
LANGUAGE plpgsql AS $$
BEGIN
    INSERT INTO shipment_product
    (shipment_id, product_id, qty, unit, store_id, operator_id, vehicle_no_polisi, driver_id, codriver_id)
    VALUES 
    (shipment_id, product_id, qty, unit, store_id, operator_id, vehicle_no_polisi, driver_id, codriver_id);
END;
$$;
