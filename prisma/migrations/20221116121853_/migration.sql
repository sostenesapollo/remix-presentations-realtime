-- AlterTable
ALTER TABLE "streets" ADD COLUMN     "neighborhood_id" INTEGER;

-- AddForeignKey
ALTER TABLE "streets" ADD CONSTRAINT "streets_neighborhood_id_fkey" FOREIGN KEY ("neighborhood_id") REFERENCES "neighborhoods"("id") ON DELETE SET NULL ON UPDATE CASCADE;
