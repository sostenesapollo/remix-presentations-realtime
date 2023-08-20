/*
  Warnings:

  - You are about to drop the column `in_out` on the `stock_movements` table. All the data in the column will be lost.
  - You are about to drop the column `order` on the `stock_movements` table. All the data in the column will be lost.
  - Added the required column `is_entrance` to the `stock_movements` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "stock_movements" DROP COLUMN "in_out",
DROP COLUMN "order",
ADD COLUMN     "is_entrance" BOOLEAN NOT NULL;
