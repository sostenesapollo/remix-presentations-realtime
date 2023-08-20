-- CreateEnum
CREATE TYPE "EmptyLiquidFull" AS ENUM ('EMPTY', 'LENDING', 'FULL');

-- AlterTable
ALTER TABLE "stock_movements" ADD COLUMN     "empty_liquid_full" "EmptyLiquidFull",
ADD COLUMN     "main_stock_movement_id" INTEGER;
