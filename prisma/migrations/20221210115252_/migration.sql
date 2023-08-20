/*
  Warnings:

  - Added the required column `company_base_id` to the `stock_by_product_product_price` table without a default value. This is not possible if the table is not empty.
  - Added the required column `company_id` to the `stock_by_product_product_price` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "stock_by_product_product_price" ADD COLUMN     "company_base_id" INTEGER NOT NULL,
ADD COLUMN     "company_id" INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE "stock_by_product_product_price" ADD CONSTRAINT "stock_by_product_product_price_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "companies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "stock_by_product_product_price" ADD CONSTRAINT "stock_by_product_product_price_company_base_id_fkey" FOREIGN KEY ("company_base_id") REFERENCES "company_bases"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
