/*
  Warnings:

  - You are about to drop the column `orderId` on the `orders_products_buy_price` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "orders_products_buy_price" DROP CONSTRAINT "orders_products_buy_price_orderId_fkey";

-- AlterTable
ALTER TABLE "orders_products_buy_price" DROP COLUMN "orderId";
