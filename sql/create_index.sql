CREATE INDEX idx_shipment_product_shipment_id ON "shipment_product" ("shipment_id");

CREATE INDEX idx_shipment_product_product_id ON "shipment_product" ("product_id");

CREATE INDEX idx_shipment_product_store_id ON "shipment_product" ("store_id");

CREATE INDEX idx_shipment_product_operator_id ON "shipment_product" ("operator_id");

CREATE INDEX idx_shipment_product_vehicle_no_polisi ON "shipment_product" ("vehicle_no_polisi");

CREATE INDEX idx_shipment_product_driver_id ON "shipment_product" ("driver_id");

CREATE INDEX idx_shipment_product_codriver_id ON "shipment_product" ("codriver_id");