CREATE OR REPLACE FUNCTION generate_shipment_id()
RETURNS VARCHAR AS $$
DECLARE
    new_id VARCHAR;
BEGIN
    SELECT TO_CHAR(NOW(), 'YYMMDD') || COALESCE(LPAD(MAX(CAST(SUBSTRING(id, 7) AS INT)) + 1, 3, '0'), '001')
    INTO new_id
    FROM shipment
    WHERE sending_time >= DATE_TRUNC('MONTH', NOW());
    
    RETURN new_id;
END;
$$ LANGUAGE plpgsql;