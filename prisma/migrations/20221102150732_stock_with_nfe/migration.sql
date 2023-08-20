/*
  Warnings:

  - You are about to drop the column `quantity` on the `movement_nfes` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "movement_nfes" DROP CONSTRAINT "movement_nfes_provider_id_fkey";

-- AlterTable
ALTER TABLE "movement_nfes" DROP COLUMN "quantity",
ADD COLUMN     "company_base_id" INTEGER NOT NULL DEFAULT 1,
ADD COLUMN     "company_id" INTEGER NOT NULL DEFAULT 1,
ALTER COLUMN "nfe_serie" DROP NOT NULL,
ALTER COLUMN "provider_id" DROP NOT NULL;

-- AlterTable
ALTER TABLE "stock_movements" ADD COLUMN     "movement_nfe_id" INTEGER;

-- AddForeignKey
ALTER TABLE "movement_nfes" ADD CONSTRAINT "movement_nfes_provider_id_fkey" FOREIGN KEY ("provider_id") REFERENCES "providers"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "movement_nfes" ADD CONSTRAINT "movement_nfes_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "companies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "movement_nfes" ADD CONSTRAINT "movement_nfes_company_base_id_fkey" FOREIGN KEY ("company_base_id") REFERENCES "company_bases"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "stock_movements" ADD CONSTRAINT "stock_movements_movement_nfe_id_fkey" FOREIGN KEY ("movement_nfe_id") REFERENCES "movement_nfes"("id") ON DELETE SET NULL ON UPDATE CASCADE;
