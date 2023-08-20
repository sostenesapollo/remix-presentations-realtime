/*
  Warnings:

  - You are about to drop the column `external_id` on the `clients` table. All the data in the column will be lost.
  - You are about to drop the column `external_id` on the `deliverymans` table. All the data in the column will be lost.
  - You are about to drop the column `external_id` on the `neighborhoods` table. All the data in the column will be lost.
  - You are about to drop the column `external_id` on the `orders` table. All the data in the column will be lost.
  - You are about to drop the column `external_id` on the `products` table. All the data in the column will be lost.
  - You are about to drop the column `external_id` on the `streets` table. All the data in the column will be lost.
  - You are about to drop the column `external_id` on the `ticket_partners` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "clients" DROP COLUMN "external_id";

-- AlterTable
ALTER TABLE "deliverymans" DROP COLUMN "external_id";

-- AlterTable
ALTER TABLE "neighborhoods" DROP COLUMN "external_id",
ADD COLUMN     "city_id" TEXT;

-- AlterTable
ALTER TABLE "orders" DROP COLUMN "external_id";

-- AlterTable
ALTER TABLE "products" DROP COLUMN "external_id";

-- AlterTable
ALTER TABLE "streets" DROP COLUMN "external_id",
ADD COLUMN     "city_id" TEXT;

-- AlterTable
ALTER TABLE "ticket_partners" DROP COLUMN "external_id";

-- CreateTable
CREATE TABLE "cities" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "update_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "cities_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "neighborhoods" ADD CONSTRAINT "neighborhoods_city_id_fkey" FOREIGN KEY ("city_id") REFERENCES "cities"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "streets" ADD CONSTRAINT "streets_city_id_fkey" FOREIGN KEY ("city_id") REFERENCES "cities"("id") ON DELETE SET NULL ON UPDATE CASCADE;
