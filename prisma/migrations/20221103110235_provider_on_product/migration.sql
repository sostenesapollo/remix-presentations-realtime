-- AlterTable
ALTER TABLE "products" ADD COLUMN     "provider_code" TEXT,
ADD COLUMN     "provider_id" INTEGER;

-- AddForeignKey
ALTER TABLE "products" ADD CONSTRAINT "products_provider_id_fkey" FOREIGN KEY ("provider_id") REFERENCES "providers"("id") ON DELETE SET NULL ON UPDATE CASCADE;
