/*
  Warnings:

  - You are about to drop the column `stock_by_product_price_id` on the `orders_products_buy_price` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "orders_products_buy_price" DROP CONSTRAINT "orders_products_buy_price_stock_by_product_price_id_fkey";

-- AlterTable
ALTER TABLE "orders_products_buy_price" DROP COLUMN "stock_by_product_price_id",
ADD COLUMN     "stockByProductPriceId" TEXT;

-- AddForeignKey
ALTER TABLE "orders_products_buy_price" ADD CONSTRAINT "orders_products_buy_price_stockByProductPriceId_fkey" FOREIGN KEY ("stockByProductPriceId") REFERENCES "stock_by_product_price"("id") ON DELETE SET NULL ON UPDATE CASCADE;
