/*
  Warnings:

  - The primary key for the `orders` table will be changed. If it partially fails, the table could be left without primary key constraint.

*/
-- DropForeignKey
ALTER TABLE "orders_payments" DROP CONSTRAINT "orders_payments_order_id_fkey";

-- DropForeignKey
ALTER TABLE "orders_products" DROP CONSTRAINT "orders_products_order_id_fkey";

-- DropForeignKey
ALTER TABLE "orders_products_buy_price" DROP CONSTRAINT "orders_products_buy_price_order_id_fkey";

-- AlterTable
ALTER TABLE "orders" DROP CONSTRAINT "orders_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "orders_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "orders_id_seq";

-- AlterTable
ALTER TABLE "orders_payments" ALTER COLUMN "order_id" SET DATA TYPE TEXT;

-- AlterTable
ALTER TABLE "orders_products" ALTER COLUMN "order_id" SET DATA TYPE TEXT;

-- AlterTable
ALTER TABLE "orders_products_buy_price" ALTER COLUMN "order_id" SET DATA TYPE TEXT;

-- AddForeignKey
ALTER TABLE "orders_products" ADD CONSTRAINT "orders_products_order_id_fkey" FOREIGN KEY ("order_id") REFERENCES "orders"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "orders_products_buy_price" ADD CONSTRAINT "orders_products_buy_price_order_id_fkey" FOREIGN KEY ("order_id") REFERENCES "orders"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "orders_payments" ADD CONSTRAINT "orders_payments_order_id_fkey" FOREIGN KEY ("order_id") REFERENCES "orders"("id") ON DELETE CASCADE ON UPDATE CASCADE;
