/*
  Warnings:

  - The primary key for the `stock_by_product_product_price` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `int` on the `stock_by_product_product_price` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "stock_by_product_product_price" DROP CONSTRAINT "stock_by_product_product_price_pkey",
DROP COLUMN "int",
ADD COLUMN     "id" SERIAL NOT NULL,
ADD CONSTRAINT "stock_by_product_product_price_pkey" PRIMARY KEY ("id");
