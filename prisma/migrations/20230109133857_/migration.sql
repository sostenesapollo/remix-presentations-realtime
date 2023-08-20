/*
  Warnings:

  - You are about to drop the column `is_delivery_false` on the `reports` table. All the data in the column will be lost.
  - You are about to drop the column `is_delivery_true` on the `reports` table. All the data in the column will be lost.
  - Added the required column `is_delivery` to the `reports` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "reports" DROP COLUMN "is_delivery_false",
DROP COLUMN "is_delivery_true",
ADD COLUMN     "is_delivery" BOOLEAN NOT NULL;
