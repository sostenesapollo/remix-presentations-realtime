-- AlterTable
ALTER TABLE "orders_payments" ADD COLUMN     "client_id" INTEGER,
ADD COLUMN     "is_delivery" BOOLEAN NOT NULL DEFAULT false;

-- AddForeignKey
ALTER TABLE "orders_payments" ADD CONSTRAINT "orders_payments_client_id_fkey" FOREIGN KEY ("client_id") REFERENCES "clients"("id") ON DELETE SET NULL ON UPDATE CASCADE;
