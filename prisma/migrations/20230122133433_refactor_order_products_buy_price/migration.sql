/*
  Warnings:

  - You are about to drop the column `order_product_id` on the `orders_products_buy_price` table. All the data in the column will be lost.
  - Added the required column `product_id` to the `orders_products_buy_price` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "orders_products_buy_price" DROP CONSTRAINT "orders_products_buy_price_order_product_id_fkey";

-- AlterTable
ALTER TABLE "orders_products_buy_price" DROP COLUMN "order_product_id",
ADD COLUMN     "product_id" INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE "orders_products_buy_price" ADD CONSTRAINT "orders_products_buy_price_product_id_fkey" FOREIGN KEY ("product_id") REFERENCES "products"("id") ON DELETE CASCADE ON UPDATE CASCADE;
