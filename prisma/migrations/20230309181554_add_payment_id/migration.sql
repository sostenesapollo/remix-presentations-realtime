-- AlterTable
ALTER TABLE "daily_money_flows" ADD COLUMN     "is_order_update" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "order_payment_id" INTEGER;

-- AddForeignKey
ALTER TABLE "daily_money_flows" ADD CONSTRAINT "daily_money_flows_order_payment_id_fkey" FOREIGN KEY ("order_payment_id") REFERENCES "orders"("id") ON DELETE SET NULL ON UPDATE CASCADE;
