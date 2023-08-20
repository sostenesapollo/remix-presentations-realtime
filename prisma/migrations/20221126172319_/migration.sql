-- AlterTable
ALTER TABLE "reports" ADD COLUMN     "deliveryman_id" INTEGER,
ADD COLUMN     "is_delivery" BOOLEAN,
ADD COLUMN     "payment_method" "PaymentMethods",
ADD COLUMN     "ticket_partner_id" INTEGER,
ALTER COLUMN "product_id" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "reports" ADD CONSTRAINT "reports_product_id_fkey" FOREIGN KEY ("product_id") REFERENCES "products"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "reports" ADD CONSTRAINT "reports_ticket_partner_id_fkey" FOREIGN KEY ("ticket_partner_id") REFERENCES "ticket_partners"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "reports" ADD CONSTRAINT "reports_deliveryman_id_fkey" FOREIGN KEY ("deliveryman_id") REFERENCES "deliverymans"("id") ON DELETE SET NULL ON UPDATE CASCADE;
