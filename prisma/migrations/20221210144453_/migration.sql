-- DropForeignKey
ALTER TABLE "stock_movements" DROP CONSTRAINT "stock_movements_movement_nfe_id_fkey";

-- AddForeignKey
ALTER TABLE "stock_movements" ADD CONSTRAINT "stock_movements_movement_nfe_id_fkey" FOREIGN KEY ("movement_nfe_id") REFERENCES "movement_nfes"("id") ON DELETE CASCADE ON UPDATE CASCADE;
