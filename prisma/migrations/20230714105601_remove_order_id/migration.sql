/*
  Warnings:

  - You are about to drop the column `orderId` on the `daily_money_flows` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "daily_money_flows" DROP CONSTRAINT "daily_money_flows_orderId_fkey";

-- AlterTable
ALTER TABLE "daily_money_flows" DROP COLUMN "orderId";
