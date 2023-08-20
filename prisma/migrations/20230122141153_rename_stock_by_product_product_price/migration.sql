/*
  Warnings:

  - You are about to drop the `stock_by_product_product_price` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "stock_by_product_product_price" DROP CONSTRAINT "stock_by_product_product_price_company_base_id_fkey";

-- DropForeignKey
ALTER TABLE "stock_by_product_product_price" DROP CONSTRAINT "stock_by_product_product_price_company_id_fkey";

-- DropForeignKey
ALTER TABLE "stock_by_product_product_price" DROP CONSTRAINT "stock_by_product_product_price_product_id_fkey";

-- DropTable
DROP TABLE "stock_by_product_product_price";

-- CreateTable
CREATE TABLE "stock_by_product_price" (
    "id" SERIAL NOT NULL,
    "product_id" INTEGER NOT NULL,
    "price" DOUBLE PRECISION,
    "quantity" INTEGER NOT NULL,
    "company_id" INTEGER NOT NULL,
    "company_base_id" INTEGER NOT NULL,

    CONSTRAINT "stock_by_product_price_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "stock_by_product_price" ADD CONSTRAINT "stock_by_product_price_product_id_fkey" FOREIGN KEY ("product_id") REFERENCES "products"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "stock_by_product_price" ADD CONSTRAINT "stock_by_product_price_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "companies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "stock_by_product_price" ADD CONSTRAINT "stock_by_product_price_company_base_id_fkey" FOREIGN KEY ("company_base_id") REFERENCES "company_bases"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
