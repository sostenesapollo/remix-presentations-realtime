/*
  Warnings:

  - You are about to drop the column `price` on the `daily_money_flows` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "daily_money_flows" DROP COLUMN "price",
ADD COLUMN     "value" DOUBLE PRECISION NOT NULL DEFAULT 0;
