/*
  Warnings:

  - You are about to drop the column `is_delivery` on the `reports` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "reports" DROP COLUMN "is_delivery",
ADD COLUMN     "is_delivery_false" INTEGER,
ADD COLUMN     "is_delivery_true" INTEGER;
