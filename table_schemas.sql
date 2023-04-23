CREATE TABLE IF NOT EXISTS "users" (
  "id" integer PRIMARY KEY,
  "username" varchar(255) NOT NULL,
  "password" varchar(255) NOT NULL,
  "email" varchar(255) NOT NULL,
  "created_at" timestamp NOT NULL
);

CREATE TABLE IF NOT EXISTS "stores" (
  "id" integer PRIMARY KEY,
  "user_id" integer,
  "name" varchar(255) NOT NULL,
  "is_microstore" boolean NOT NULL,
  "created_at" timestamp NOT NULL
);

CREATE TABLE IF NOT EXISTS "catalogs" (
  "id" integer PRIMARY KEY,
  "store_id" integer,
  "name" varchar(255) NOT NULL,
  "created_at" timestamp NOT NULL
);

CREATE TABLE IF NOT EXISTS "products" (
  "id" integer PRIMARY KEY,
  "name" varchar(255) NOT NULL,
  "description" text NOT NULL,
  "price" "decimal(10, 2)" NOT NULL,
  "available_date" date NOT NULL,
  "stock_quantity" integer NOT NULL,
  "image_url" text NOT NULL,
  "created_at" timestamp NOT NULL
);

CREATE TABLE IF NOT EXISTS "product_attributes" (
  "id" integer PRIMARY KEY,
  "product_id" integer,
  "title" varchar(255) NOT NULL,
  "description" text NOT NULL,
  "created_at" timestamp NOT NULL
);

CREATE TABLE IF NOT EXISTS "catalog_products" (
  "id" integer PRIMARY KEY,
  "catalog_id" integer,
  "product_id" integer,
  "created_at" timestamp NOT NULL
);

CREATE TABLE IF NOT EXISTS "store_products" (
  "id" integer PRIMARY KEY,
  "store_id" integer,
  "product_id" integer,
  "created_at" timestamp NOT NULL
);


ALTER TABLE "stores" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "catalogs" ADD FOREIGN KEY ("store_id") REFERENCES "stores" ("id");

ALTER TABLE "product_attributes" ADD FOREIGN KEY ("product_id") REFERENCES "products" ("id");

ALTER TABLE "catalog_products" ADD FOREIGN KEY ("catalog_id") REFERENCES "catalogs" ("id");

ALTER TABLE "catalog_products" ADD FOREIGN KEY ("product_id") REFERENCES "products" ("id");

ALTER TABLE "store_products" ADD FOREIGN KEY ("store_id") REFERENCES "stores" ("id");

ALTER TABLE "store_products" ADD FOREIGN KEY ("product_id") REFERENCES "products" ("id");
