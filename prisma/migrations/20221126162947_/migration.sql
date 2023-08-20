/*
  Warnings:

  - You are about to drop the column `quantity` on the `reports` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "reports" DROP COLUMN "quantity",
ADD COLUMN     "value" DOUBLE PRECISION NOT NULL DEFAULT 0;
