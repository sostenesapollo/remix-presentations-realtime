/*
  Warnings:

  - You are about to drop the column `is_delivery` on the `orders_payments` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "orders" ADD COLUMN     "is_delivery" BOOLEAN NOT NULL DEFAULT false;

-- AlterTable
ALTER TABLE "orders_payments" DROP COLUMN "is_delivery";
