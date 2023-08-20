-- AlterTable
ALTER TABLE "company_base_operations" ADD COLUMN     "stockId" INTEGER;

-- AddForeignKey
ALTER TABLE "company_base_operations" ADD CONSTRAINT "company_base_operations_stockId_fkey" FOREIGN KEY ("stockId") REFERENCES "stocks"("id") ON DELETE SET NULL ON UPDATE CASCADE;
