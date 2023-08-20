-- AlterTable
ALTER TABLE "orders_products" ADD COLUMN     "empty_order_product_id" INTEGER;

-- AddForeignKey
ALTER TABLE "orders_products" ADD CONSTRAINT "orders_products_empty_order_product_id_fkey" FOREIGN KEY ("empty_order_product_id") REFERENCES "orders_products"("id") ON DELETE CASCADE ON UPDATE CASCADE;
