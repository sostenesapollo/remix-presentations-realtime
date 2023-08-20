/*
  Warnings:

  - You are about to drop the column `external_id` on the `clients` table. All the data in the column will be lost.
  - You are about to drop the column `external_id` on the `deliverymans` table. All the data in the column will be lost.
  - You are about to drop the column `external_id` on the `neighborhoods` table. All the data in the column will be lost.
  - You are about to drop the column `external_id` on the `orders` table. All the data in the column will be lost.
  - You are about to drop the column `buy_unity_id` on the `products` table. All the data in the column will be lost.
  - You are about to drop the column `external_id` on the `products` table. All the data in the column will be lost.
  - You are about to drop the column `proportion` on the `products` table. All the data in the column will be lost.
  - You are about to drop the column `provider_code` on the `products` table. All the data in the column will be lost.
  - You are about to drop the column `provider_id` on the `products` table. All the data in the column will be lost.
  - You are about to drop the column `sell_unity_id` on the `products` table. All the data in the column will be lost.
  - You are about to drop the column `external_id` on the `streets` table. All the data in the column will be lost.
  - You are about to drop the column `external_id` on the `ticket_partners` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "products" DROP CONSTRAINT "products_provider_id_fkey";

-- AlterTable
ALTER TABLE "clients" DROP COLUMN "external_id";

-- AlterTable
ALTER TABLE "deliverymans" DROP COLUMN "external_id";

-- AlterTable
ALTER TABLE "neighborhoods" DROP COLUMN "external_id";

-- AlterTable
ALTER TABLE "orders" DROP COLUMN "external_id";

-- AlterTable
ALTER TABLE "products" DROP COLUMN "buy_unity_id",
DROP COLUMN "external_id",
DROP COLUMN "proportion",
DROP COLUMN "provider_code",
DROP COLUMN "provider_id",
DROP COLUMN "sell_unity_id";

-- AlterTable
ALTER TABLE "streets" DROP COLUMN "external_id";

-- AlterTable
ALTER TABLE "ticket_partners" DROP COLUMN "external_id";
