-- DropForeignKey
ALTER TABLE "orders_products" DROP CONSTRAINT "orders_products_order_id_fkey";

-- AddForeignKey
ALTER TABLE "orders_products" ADD CONSTRAINT "orders_products_order_id_fkey" FOREIGN KEY ("order_id") REFERENCES "orders"("id") ON DELETE CASCADE ON UPDATE CASCADE;
