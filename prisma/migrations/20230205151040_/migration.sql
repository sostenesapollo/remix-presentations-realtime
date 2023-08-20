/*
  Warnings:

  - You are about to drop the column `value` on the `daily_money_flows` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "daily_money_flows" DROP COLUMN "value",
ADD COLUMN     "price" DOUBLE PRECISION NOT NULL DEFAULT 0;

-- AlterTable
ALTER TABLE "money_flow_categories" ADD COLUMN     "is_entrance" BOOLEAN NOT NULL DEFAULT false;
