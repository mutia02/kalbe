CREATE OR REPLACE PROCEDURE create_shipment(
    sending_time TIMESTAMP,
    OUT shipment_id VARCHAR
)
LANGUAGE plpgsql AS $$
BEGIN
    SELECT generate_shipment_id() INTO shipment_id;

    INSERT INTO shipment
    (id, sending_time)
    VALUES 
    (shipment_id, sending_time);
END;
$$;