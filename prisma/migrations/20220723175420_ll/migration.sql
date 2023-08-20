/*
  Warnings:

  - You are about to drop the column `companyId` on the `operations` table. All the data in the column will be lost.
  - You are about to drop the column `stockId` on the `operations` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "operations" DROP CONSTRAINT "operations_companyId_fkey";

-- DropForeignKey
ALTER TABLE "operations" DROP CONSTRAINT "operations_stockId_fkey";

-- AlterTable
ALTER TABLE "operations" DROP COLUMN "companyId",
DROP COLUMN "stockId";
