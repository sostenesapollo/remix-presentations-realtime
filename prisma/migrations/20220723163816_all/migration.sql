/*
  Warnings:

  - You are about to drop the `CompanyBaseOperations` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "CompanyBaseOperations" DROP CONSTRAINT "CompanyBaseOperations_company_base_id_fkey";

-- DropForeignKey
ALTER TABLE "CompanyBaseOperations" DROP CONSTRAINT "CompanyBaseOperations_company_id_fkey";

-- DropTable
DROP TABLE "CompanyBaseOperations";

-- CreateTable
CREATE TABLE "company_base_operations" (
    "id" SERIAL NOT NULL,
    "alias" INTEGER,
    "company_id" INTEGER NOT NULL,
    "company_base_id" INTEGER NOT NULL,
    "operation_id" INTEGER NOT NULL,
    "stock_in_id" INTEGER,
    "stock_out_id" INTEGER,

    CONSTRAINT "company_base_operations_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "company_base_operations" ADD CONSTRAINT "company_base_operations_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "companies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "company_base_operations" ADD CONSTRAINT "company_base_operations_company_base_id_fkey" FOREIGN KEY ("company_base_id") REFERENCES "company_bases"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
