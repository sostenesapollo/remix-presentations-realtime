-- DropForeignKey
ALTER TABLE "orders_payments" DROP CONSTRAINT "orders_payments_order_id_fkey";

-- AddForeignKey
ALTER TABLE "orders_payments" ADD CONSTRAINT "orders_payments_order_id_fkey" FOREIGN KEY ("order_id") REFERENCES "orders"("id") ON DELETE CASCADE ON UPDATE CASCADE;
