/*
  Warnings:

  - You are about to drop the `company_base_operations` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "company_base_operations" DROP CONSTRAINT "company_base_operations_company_base_id_fkey";

-- DropForeignKey
ALTER TABLE "company_base_operations" DROP CONSTRAINT "company_base_operations_company_id_fkey";

-- DropTable
DROP TABLE "company_base_operations";

-- CreateTable
CREATE TABLE "operations_company_base" (
    "id" SERIAL NOT NULL,
    "alias" INTEGER,
    "company_id" INTEGER NOT NULL,
    "company_base_id" INTEGER NOT NULL,
    "operation_id" INTEGER NOT NULL,
    "stock_in_id" INTEGER,
    "stock_out_id" INTEGER,

    CONSTRAINT "operations_company_base_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "operations_company_base" ADD CONSTRAINT "operations_company_base_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "companies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "operations_company_base" ADD CONSTRAINT "operations_company_base_company_base_id_fkey" FOREIGN KEY ("company_base_id") REFERENCES "company_bases"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
