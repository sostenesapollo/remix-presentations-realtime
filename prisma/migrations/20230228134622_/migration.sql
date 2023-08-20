/*
  Warnings:

  - You are about to drop the `stock_movements_quantities_and_unit_value` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "stock_movements_quantities_and_unit_value" DROP CONSTRAINT "stock_movements_quantities_and_unit_value_stock_movement_i_fkey";

-- AlterTable
ALTER TABLE "stock_movements" ADD COLUMN     "unit_value" DOUBLE PRECISION;

-- DropTable
DROP TABLE "stock_movements_quantities_and_unit_value";
