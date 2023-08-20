/*
  Warnings:

  - You are about to drop the column `clientId` on the `orders_payments` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "orders_payments" DROP CONSTRAINT "orders_payments_clientId_fkey";

-- AlterTable
ALTER TABLE "orders_payments" DROP COLUMN "clientId";
