/*
  Warnings:

  - You are about to drop the column `client_id` on the `orders_payments` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "orders_payments" DROP CONSTRAINT "orders_payments_client_id_fkey";

-- AlterTable
ALTER TABLE "orders" ADD COLUMN     "client_id" INTEGER;

-- AlterTable
ALTER TABLE "orders_payments" DROP COLUMN "client_id",
ADD COLUMN     "clientId" INTEGER;

-- AddForeignKey
ALTER TABLE "orders" ADD CONSTRAINT "orders_client_id_fkey" FOREIGN KEY ("client_id") REFERENCES "clients"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "orders_payments" ADD CONSTRAINT "orders_payments_clientId_fkey" FOREIGN KEY ("clientId") REFERENCES "clients"("id") ON DELETE SET NULL ON UPDATE CASCADE;
