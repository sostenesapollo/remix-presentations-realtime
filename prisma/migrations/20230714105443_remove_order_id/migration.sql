/*
  Warnings:

  - You are about to drop the column `order_id` on the `daily_money_flows` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "daily_money_flows" DROP CONSTRAINT "daily_money_flows_order_id_fkey";

-- AlterTable
ALTER TABLE "daily_money_flows" DROP COLUMN "order_id",
ADD COLUMN     "orderId" TEXT;

-- AddForeignKey
ALTER TABLE "daily_money_flows" ADD CONSTRAINT "daily_money_flows_orderId_fkey" FOREIGN KEY ("orderId") REFERENCES "orders"("id") ON DELETE SET NULL ON UPDATE CASCADE;
