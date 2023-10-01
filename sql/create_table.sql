CREATE SCHEMA app;

SET search_path TO app;

CREATE TABLE "product" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "name" varchar(255)
);

CREATE TABLE "store" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "destination" varchar(255),
  "address" varchar(1024),
  "receiver" varchar(255)
);

CREATE TABLE "vehicle" (
  "no_polisi" varchar(9) PRIMARY KEY,
  "name" varchar(255)
);

CREATE TABLE "operator" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "name" varchar(255)
);

CREATE TABLE "driver" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "name" varchar(255)
);

CREATE TABLE "codriver" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "name" varchar(255)
);

CREATE TABLE "shipment" (
  "id" varchar(9) PRIMARY KEY,
  "sending_time" datetime,
  "delivered_time" datetime
);

CREATE TABLE "shipment_product" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "shipment_id" varchar(9),
  "product_id" int,
  "qty" int,
  "unit" varchar(10),
  "store_id" int,
  "operator_id" int,
  "vehicle_no_polisi" varchar(9),
  "driver_id" int,
  "codriver_id" int
);

ALTER TABLE "shipment_product" ADD FOREIGN KEY ("shipment_id") REFERENCES "shipment" ("id");

ALTER TABLE "shipment_product" ADD FOREIGN KEY ("product_id") REFERENCES "product" ("id");

ALTER TABLE "shipment_product" ADD FOREIGN KEY ("store_id") REFERENCES "store" ("id");

ALTER TABLE "shipment_product" ADD FOREIGN KEY ("operator_id") REFERENCES "operator" ("id");

ALTER TABLE "shipment_product" ADD FOREIGN KEY ("vehicle_no_polisi") REFERENCES "vehicle" ("no_polisi");

ALTER TABLE "shipment_product" ADD FOREIGN KEY ("driver_id") REFERENCES "driver" ("id");

ALTER TABLE "shipment_product" ADD FOREIGN KEY ("codriver_id") REFERENCES "codriver" ("id");