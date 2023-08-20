-- DropForeignKey
ALTER TABLE "neighborhoods" DROP CONSTRAINT "neighborhoods_company_base_id_fkey";

-- DropForeignKey
ALTER TABLE "neighborhoods" DROP CONSTRAINT "neighborhoods_company_id_fkey";

-- AlterTable
ALTER TABLE "neighborhoods" ALTER COLUMN "company_base_id" DROP NOT NULL,
ALTER COLUMN "company_id" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "neighborhoods" ADD CONSTRAINT "neighborhoods_company_base_id_fkey" FOREIGN KEY ("company_base_id") REFERENCES "company_bases"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "neighborhoods" ADD CONSTRAINT "neighborhoods_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "companies"("id") ON DELETE SET NULL ON UPDATE CASCADE;
