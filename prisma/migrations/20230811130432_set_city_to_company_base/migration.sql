-- AlterTable
ALTER TABLE "company_bases" ADD COLUMN     "city_id" TEXT;

-- AddForeignKey
ALTER TABLE "company_bases" ADD CONSTRAINT "company_bases_city_id_fkey" FOREIGN KEY ("city_id") REFERENCES "cities"("id") ON DELETE SET NULL ON UPDATE CASCADE;
