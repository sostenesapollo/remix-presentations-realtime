-- DropForeignKey
ALTER TABLE "daily_money_flows" DROP CONSTRAINT "daily_money_flows_order_payment_id_fkey";

-- AddForeignKey
ALTER TABLE "daily_money_flows" ADD CONSTRAINT "daily_money_flows_order_payment_id_fkey" FOREIGN KEY ("order_payment_id") REFERENCES "orders_payments"("id") ON DELETE SET NULL ON UPDATE CASCADE;
