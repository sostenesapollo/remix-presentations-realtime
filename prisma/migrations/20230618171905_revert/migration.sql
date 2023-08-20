/*
  Warnings:

  - You are about to drop the column `empty_order_product_id` on the `orders_products` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "orders_products" DROP CONSTRAINT "orders_products_empty_order_product_id_fkey";

-- AlterTable
ALTER TABLE "orders_products" DROP COLUMN "empty_order_product_id";
