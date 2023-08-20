/*
  Warnings:

  - The values [LENDING,FULL] on the enum `EmptyLiquidFull` will be removed. If these variants are still used in the database, this will fail.

*/
-- AlterEnum
BEGIN;
CREATE TYPE "EmptyLiquidFull_new" AS ENUM ('EMPTY', 'LIQUID', 'COMPLETE');
ALTER TABLE "stock_movements" ALTER COLUMN "empty_liquid_full" TYPE "EmptyLiquidFull_new" USING ("empty_liquid_full"::text::"EmptyLiquidFull_new");
ALTER TYPE "EmptyLiquidFull" RENAME TO "EmptyLiquidFull_old";
ALTER TYPE "EmptyLiquidFull_new" RENAME TO "EmptyLiquidFull";
DROP TYPE "EmptyLiquidFull_old";
COMMIT;
