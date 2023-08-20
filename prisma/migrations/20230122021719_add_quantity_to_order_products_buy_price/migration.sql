/*
  Warnings:

  - Added the required column `quantity` to the `orders_products_buy_price` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "orders_products_buy_price" ADD COLUMN     "quantity" DOUBLE PRECISION NOT NULL;
