-- CreateEnum
CREATE TYPE "PaymentMethods" AS ENUM ('MONEY', 'CARD', 'TRANSFERENCE');

-- CreateTable
CREATE TABLE "orders" (
    "id" SERIAL NOT NULL,
    "company_id" INTEGER NOT NULL,
    "company_base_id" INTEGER NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "update_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "orders_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "orders_products" (
    "id" SERIAL NOT NULL,
    "order_id" INTEGER NOT NULL,
    "product_id" INTEGER NOT NULL,
    "quantity" INTEGER NOT NULL,

    CONSTRAINT "orders_products_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "orders_payments" (
    "id" SERIAL NOT NULL,
    "order_id" INTEGER NOT NULL,
    "method" "PaymentMethods" NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "ticket_partner_id" INTEGER,
    "ticket_code" TEXT,

    CONSTRAINT "orders_payments_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "stock_by_product_price" (
    "int" SERIAL NOT NULL,
    "product_id" INTEGER NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "quantity" INTEGER NOT NULL,

    CONSTRAINT "stock_by_product_price_pkey" PRIMARY KEY ("int")
);

-- AddForeignKey
ALTER TABLE "orders" ADD CONSTRAINT "orders_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "companies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "orders" ADD CONSTRAINT "orders_company_base_id_fkey" FOREIGN KEY ("company_base_id") REFERENCES "company_bases"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "orders_products" ADD CONSTRAINT "orders_products_product_id_fkey" FOREIGN KEY ("product_id") REFERENCES "products"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "orders_products" ADD CONSTRAINT "orders_products_order_id_fkey" FOREIGN KEY ("order_id") REFERENCES "orders"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "orders_payments" ADD CONSTRAINT "orders_payments_ticket_partner_id_fkey" FOREIGN KEY ("ticket_partner_id") REFERENCES "ticket_partners"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "orders_payments" ADD CONSTRAINT "orders_payments_order_id_fkey" FOREIGN KEY ("order_id") REFERENCES "orders"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "stock_by_product_price" ADD CONSTRAINT "stock_by_product_price_product_id_fkey" FOREIGN KEY ("product_id") REFERENCES "products"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
