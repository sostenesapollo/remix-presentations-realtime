/*
  Warnings:

  - You are about to drop the `neighborhood` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `street` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "neighborhood" DROP CONSTRAINT "neighborhood_company_base_id_fkey";

-- DropForeignKey
ALTER TABLE "neighborhood" DROP CONSTRAINT "neighborhood_company_id_fkey";

-- DropForeignKey
ALTER TABLE "street" DROP CONSTRAINT "street_company_base_id_fkey";

-- DropForeignKey
ALTER TABLE "street" DROP CONSTRAINT "street_company_id_fkey";

-- AlterTable
ALTER TABLE "clients" ADD COLUMN     "number" TEXT,
ADD COLUMN     "street_block" TEXT,
ADD COLUMN     "street_id" TEXT;

-- DropTable
DROP TABLE "neighborhood";

-- DropTable
DROP TABLE "street";

-- CreateTable
CREATE TABLE "neighborhoods" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "company_base_id" INTEGER NOT NULL,
    "company_id" INTEGER NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "update_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "neighborhoods_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "streets" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "company_base_id" INTEGER NOT NULL,
    "company_id" INTEGER NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "update_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "streets_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "neighborhoods" ADD CONSTRAINT "neighborhoods_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "companies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "neighborhoods" ADD CONSTRAINT "neighborhoods_company_base_id_fkey" FOREIGN KEY ("company_base_id") REFERENCES "company_bases"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "streets" ADD CONSTRAINT "streets_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "companies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "streets" ADD CONSTRAINT "streets_company_base_id_fkey" FOREIGN KEY ("company_base_id") REFERENCES "company_bases"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
