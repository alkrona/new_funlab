-- In this SQL file, write (and comment!) the schema of your database, including the CREATE TABLE, CREATE INDEX, CREATE VIEW, etc. statements that compose it
CREATE TABLE IF NOT EXISTS "sales" (
    "id" INTEGER PRIMARY KEY,
    "items" TEXT NOT NULL,
    "sales_amount" INTEGER NOT NULL,
    "sales" NUMERIC NOT NULL,
    "item_id" INT NOT NULL,
    "venue" TEXT NOT NULL,
    "year" TEXT NOT NULL,
    "period" TEXT NOT NULL,
    FOREIGN KEY("item_id") REFERENCES "items"("food_id"));

CREATE TABLE "temp2" (
"items" TEXT NOT NULL,
"sales_amount" INTEGER NOT NULL,
"sales" NUMERIC NOT NULL,
"item_id" INT NOT NULL,
"venue" TEXT NOT NULL,
"year" TEXT NOT NULL,
"period" TEXT NOT NULL
);
.import --csv sales_period_8.csv temp2
.import --csv sales_period_9.csv temp2
.import --csv sales_period_10.csv temp2
.import --csv sales_period_11.csv temp2
.import --csv sales_period_12.csv temp2
.import --csv sales_period_13.csv temp2
INSERT INTO "sales"("items","sales_amount","sales","item_id","venue","year","period")
   SELECT "items","sales_amount","sales","item_id","venue","year","period" FROM "temp2";
DROP TABLE "temp2"
CREATE TABLE "temp3"(

    "food_id" INT,
    "food_item" TEXT,
    "type" TEXT

);
CREATE TABLE IF NOT EXISTS "items" (
    "food_id" INT PRIMARY KEY,
    "food_item" TEXT,
    "type" TEXT
);
 INSERT INTO "items"("food_id","food_item","type")
 SELECT "food_id","food_item","type" FROM "temp3";

 DROP TABLE "temp3";
CREATE VIEW "sales_p8" AS
    SELECT "items","sales_amount","sales","period","type" FROM "sales"
    JOIN "items" ON "sales"."item_id" = "items"."food_id"
    WHERE "type" = 'walk-on' AND "period" = 'P08';
 CREATE VIEW "sales_p9" AS
    SELECT "items","sales_amount","sales","period","type" FROM "sales"
    JOIN "items" ON "sales"."item_id" = "items"."food_id"
    WHERE "type" = 'walk-on' AND "period" = 'P09';
    CREATE VIEW "sales_p10" AS
    SELECT "items","sales_amount","sales","period","type" FROM "sales"
    JOIN "items" ON "sales"."item_id" = "items"."food_id"
    WHERE "type" = 'walk-on' AND "period" = 'P10';
    CREATE VIEW "sales_p11" AS
    SELECT "items","sales_amount","sales","period","type" FROM "sales"
    JOIN "items" ON "sales"."item_id" = "items"."food_id"
    WHERE "type" = 'walk-on' AND "period" = 'P11';
    CREATE VIEW "sales_p12" AS
    SELECT "items","sales_amount","sales","period","type" FROM "sales"
    JOIN "items" ON "sales"."item_id" = "items"."food_id"
    WHERE "type" = 'walk-on' AND "period" = 'P12';
    CREATE VIEW "sales_p13" AS
    SELECT "items","sales_amount","sales","period","type" FROM "sales"
    JOIN "items" ON "sales"."item_id" = "items"."food_id"
    WHERE "type" = 'walk-on' AND "period" = 'P13';

    CREATE VIEW "walk-in-sales" AS
    SELECT "items","sales_amount","sales","period" FROM "sales"
    JOIN "items" ON "sales"."item_id" = "items"."food_id"
    WHERE "type" = 'walk-on' AND "type" IS NOT NULL;
