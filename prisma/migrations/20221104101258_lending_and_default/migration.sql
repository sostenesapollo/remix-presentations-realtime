/*
  Warnings:

  - The values [FULL,EMPTY,LENDING_FULL,LENDING_EMPTY] on the enum `StockRole` will be removed. If these variants are still used in the database, this will fail.

*/
-- AlterEnum
BEGIN;
CREATE TYPE "StockRole_new" AS ENUM ('DEFAULT', 'LENDING');
ALTER TABLE "stocks" ALTER COLUMN "role" TYPE "StockRole_new" USING ("role"::text::"StockRole_new");
ALTER TYPE "StockRole" RENAME TO "StockRole_old";
ALTER TYPE "StockRole_new" RENAME TO "StockRole";
DROP TYPE "StockRole_old";
COMMIT;
