-- DropForeignKey
ALTER TABLE "streets" DROP CONSTRAINT "streets_company_base_id_fkey";

-- DropForeignKey
ALTER TABLE "streets" DROP CONSTRAINT "streets_company_id_fkey";

-- AlterTable
ALTER TABLE "streets" ALTER COLUMN "company_base_id" DROP NOT NULL,
ALTER COLUMN "company_id" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "streets" ADD CONSTRAINT "streets_company_base_id_fkey" FOREIGN KEY ("company_base_id") REFERENCES "company_bases"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "streets" ADD CONSTRAINT "streets_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "companies"("id") ON DELETE SET NULL ON UPDATE CASCADE;
