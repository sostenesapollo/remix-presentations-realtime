-- AlterTable
ALTER TABLE "orders" ADD COLUMN     "deliveryman_id" INTEGER;

-- AddForeignKey
ALTER TABLE "orders" ADD CONSTRAINT "orders_deliveryman_id_fkey" FOREIGN KEY ("deliveryman_id") REFERENCES "deliverymans"("id") ON DELETE SET NULL ON UPDATE CASCADE;
