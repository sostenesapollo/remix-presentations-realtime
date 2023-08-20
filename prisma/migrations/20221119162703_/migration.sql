/*
  Warnings:

  - You are about to drop the column `street_block` on the `clients` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "clients" DROP COLUMN "street_block",
ADD COLUMN     "block" TEXT,
ADD COLUMN     "reference" TEXT;
