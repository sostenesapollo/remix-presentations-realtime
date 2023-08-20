/*
  Warnings:

  - The primary key for the `daily_money_flows` table will be changed. If it partially fails, the table could be left without primary key constraint.

*/
-- AlterTable
ALTER TABLE "daily_money_flows" DROP CONSTRAINT "daily_money_flows_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "daily_money_flows_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "daily_money_flows_id_seq";
