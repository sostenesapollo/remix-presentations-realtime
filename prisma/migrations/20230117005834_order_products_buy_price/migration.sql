-- CreateTable
CREATE TABLE "orders_products_buy_price" (
    "id" SERIAL NOT NULL,
    "order_product_id" INTEGER NOT NULL,
    "buy_unit_price" DOUBLE PRECISION NOT NULL DEFAULT 0,

    CONSTRAINT "orders_products_buy_price_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "orders_products_buy_price" ADD CONSTRAINT "orders_products_buy_price_order_product_id_fkey" FOREIGN KEY ("order_product_id") REFERENCES "orders_products"("id") ON DELETE CASCADE ON UPDATE CASCADE;
