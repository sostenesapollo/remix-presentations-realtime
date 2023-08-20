/*
  Warnings:

  - Added the required column `order_id` to the `orders_products_buy_price` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "orders_products_buy_price" ADD COLUMN     "order_id" INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE "orders_products_buy_price" ADD CONSTRAINT "orders_products_buy_price_order_id_fkey" FOREIGN KEY ("order_id") REFERENCES "orders"("id") ON DELETE CASCADE ON UPDATE CASCADE;
