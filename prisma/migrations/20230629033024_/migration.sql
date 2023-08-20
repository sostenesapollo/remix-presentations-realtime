-- AddForeignKey
ALTER TABLE "orders_products_buy_price" ADD CONSTRAINT "orders_products_buy_price_order_id_fkey" FOREIGN KEY ("order_id") REFERENCES "orders"("id") ON DELETE CASCADE ON UPDATE CASCADE;
