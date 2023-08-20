/*
  Warnings:

  - The `street_id` column on the `clients` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- AlterTable
ALTER TABLE "clients" DROP COLUMN "street_id",
ADD COLUMN     "street_id" INTEGER;

-- AddForeignKey
ALTER TABLE "clients" ADD CONSTRAINT "clients_street_id_fkey" FOREIGN KEY ("street_id") REFERENCES "streets"("id") ON DELETE SET NULL ON UPDATE CASCADE;
