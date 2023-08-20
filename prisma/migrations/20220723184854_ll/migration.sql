/*
  Warnings:

  - You are about to drop the column `stockId` on the `company_base_operations` table. All the data in the column will be lost.
  - You are about to drop the column `description` on the `operations` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "company_base_operations" DROP CONSTRAINT "company_base_operations_stockId_fkey";

-- AlterTable
ALTER TABLE "company_base_operations" DROP COLUMN "stockId";

-- AlterTable
ALTER TABLE "operations" DROP COLUMN "description";
