/*
  Warnings:

  - You are about to drop the column `operation_id` on the `stock_movements` table. All the data in the column will be lost.
  - Added the required column `in_out` to the `stock_movements` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "stock_movements" DROP COLUMN "operation_id",
ADD COLUMN     "in_out" BOOLEAN NOT NULL;
