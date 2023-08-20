/*
  Warnings:

  - You are about to drop the column `seconday_color` on the `deliverymans` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "deliverymans" DROP COLUMN "seconday_color",
ADD COLUMN     "secondary_color" TEXT NOT NULL DEFAULT '#000000';
