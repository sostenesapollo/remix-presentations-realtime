-- DropForeignKey
ALTER TABLE "orders_products_buy_price" DROP CONSTRAINT "orders_products_buy_price_order_id_fkey";

-- AlterTable
ALTER TABLE "orders_products_buy_price" ADD COLUMN     "orderId" TEXT;

-- AddForeignKey
ALTER TABLE "orders_products_buy_price" ADD CONSTRAINT "orders_products_buy_price_orderId_fkey" FOREIGN KEY ("orderId") REFERENCES "orders"("id") ON DELETE SET NULL ON UPDATE CASCADE;
