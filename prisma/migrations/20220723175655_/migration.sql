/*
  Warnings:

  - You are about to drop the column `companyBaseId` on the `operations` table. All the data in the column will be lost.
  - You are about to drop the column `is_shared` on the `operations` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "operations" DROP CONSTRAINT "operations_companyBaseId_fkey";

-- AlterTable
ALTER TABLE "operations" DROP COLUMN "companyBaseId",
DROP COLUMN "is_shared";
