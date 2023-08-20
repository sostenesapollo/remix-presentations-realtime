-- AlterTable
ALTER TABLE "daily_money_flows" ADD COLUMN     "order_id" TEXT;

-- AddForeignKey
ALTER TABLE "daily_money_flows" ADD CONSTRAINT "daily_money_flows_order_id_fkey" FOREIGN KEY ("order_id") REFERENCES "orders"("id") ON DELETE CASCADE ON UPDATE CASCADE;
