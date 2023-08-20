/*
  Warnings:

  - Added the required column `stock_by_product_price_id` to the `orders_products_buy_price` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "orders_products_buy_price" ADD COLUMN     "stock_by_product_price_id" INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE "orders_products_buy_price" ADD CONSTRAINT "orders_products_buy_price_stock_by_product_price_id_fkey" FOREIGN KEY ("stock_by_product_price_id") REFERENCES "stock_by_product_price"("id") ON DELETE CASCADE ON UPDATE CASCADE;
