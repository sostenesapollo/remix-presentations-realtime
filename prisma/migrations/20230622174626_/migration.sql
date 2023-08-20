/*
  Warnings:

  - The primary key for the `companies` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `company_bases` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `deliverymans` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `logins_company_bases` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `money_flow_categories` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `movement_nfes` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `neighborhoods` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `orders_payments` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `orders_products` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `orders_products_buy_price` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `product_categories` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `product_codes_nfes` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `product_unities` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `products` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `providers` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `reports` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `stock_by_product_price` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `stock_daily_products` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `stock_movements` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `stock_movements_quantities_and_values` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `stocks` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `streets` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `ticket_partners` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `user_companies` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `users` table will be changed. If it partially fails, the table could be left without primary key constraint.

*/
-- DropForeignKey
ALTER TABLE "clients" DROP CONSTRAINT "clients_company_base_id_fkey";

-- DropForeignKey
ALTER TABLE "clients" DROP CONSTRAINT "clients_company_id_fkey";

-- DropForeignKey
ALTER TABLE "clients" DROP CONSTRAINT "clients_street_id_fkey";

-- DropForeignKey
ALTER TABLE "company_bases" DROP CONSTRAINT "company_bases_company_id_fkey";

-- DropForeignKey
ALTER TABLE "daily_money_flows" DROP CONSTRAINT "daily_money_flows_company_base_id_fkey";

-- DropForeignKey
ALTER TABLE "daily_money_flows" DROP CONSTRAINT "daily_money_flows_company_id_fkey";

-- DropForeignKey
ALTER TABLE "daily_money_flows" DROP CONSTRAINT "daily_money_flows_money_flow_category_id_fkey";

-- DropForeignKey
ALTER TABLE "daily_money_flows" DROP CONSTRAINT "daily_money_flows_order_payment_id_fkey";

-- DropForeignKey
ALTER TABLE "deliverymans" DROP CONSTRAINT "deliverymans_company_base_id_fkey";

-- DropForeignKey
ALTER TABLE "deliverymans" DROP CONSTRAINT "deliverymans_company_id_fkey";

-- DropForeignKey
ALTER TABLE "logins_company_bases" DROP CONSTRAINT "logins_company_bases_company_base_id_fkey";

-- DropForeignKey
ALTER TABLE "logins_company_bases" DROP CONSTRAINT "logins_company_bases_company_id_fkey";

-- DropForeignKey
ALTER TABLE "logins_company_bases" DROP CONSTRAINT "logins_company_bases_user_id_fkey";

-- DropForeignKey
ALTER TABLE "money_flow_categories" DROP CONSTRAINT "money_flow_categories_company_base_id_fkey";

-- DropForeignKey
ALTER TABLE "money_flow_categories" DROP CONSTRAINT "money_flow_categories_company_id_fkey";

-- DropForeignKey
ALTER TABLE "movement_nfes" DROP CONSTRAINT "movement_nfes_company_base_id_fkey";

-- DropForeignKey
ALTER TABLE "movement_nfes" DROP CONSTRAINT "movement_nfes_company_id_fkey";

-- DropForeignKey
ALTER TABLE "movement_nfes" DROP CONSTRAINT "movement_nfes_provider_id_fkey";

-- DropForeignKey
ALTER TABLE "neighborhoods" DROP CONSTRAINT "neighborhoods_company_base_id_fkey";

-- DropForeignKey
ALTER TABLE "neighborhoods" DROP CONSTRAINT "neighborhoods_company_id_fkey";

-- DropForeignKey
ALTER TABLE "orders" DROP CONSTRAINT "orders_company_base_id_fkey";

-- DropForeignKey
ALTER TABLE "orders" DROP CONSTRAINT "orders_company_id_fkey";

-- DropForeignKey
ALTER TABLE "orders" DROP CONSTRAINT "orders_deliveryman_id_fkey";

-- DropForeignKey
ALTER TABLE "orders_payments" DROP CONSTRAINT "orders_payments_ticket_partner_id_fkey";

-- DropForeignKey
ALTER TABLE "orders_products" DROP CONSTRAINT "orders_products_product_id_fkey";

-- DropForeignKey
ALTER TABLE "orders_products_buy_price" DROP CONSTRAINT "orders_products_buy_price_product_id_fkey";

-- DropForeignKey
ALTER TABLE "orders_products_buy_price" DROP CONSTRAINT "orders_products_buy_price_stock_by_product_price_id_fkey";

-- DropForeignKey
ALTER TABLE "product_categories" DROP CONSTRAINT "product_categories_company_base_id_fkey";

-- DropForeignKey
ALTER TABLE "product_categories" DROP CONSTRAINT "product_categories_company_id_fkey";

-- DropForeignKey
ALTER TABLE "product_codes_nfes" DROP CONSTRAINT "product_codes_nfes_product_id_fkey";

-- DropForeignKey
ALTER TABLE "product_codes_nfes" DROP CONSTRAINT "product_codes_nfes_provider_id_fkey";

-- DropForeignKey
ALTER TABLE "product_unities" DROP CONSTRAINT "product_unities_company_base_id_fkey";

-- DropForeignKey
ALTER TABLE "product_unities" DROP CONSTRAINT "product_unities_company_id_fkey";

-- DropForeignKey
ALTER TABLE "products" DROP CONSTRAINT "products_category_id_fkey";

-- DropForeignKey
ALTER TABLE "products" DROP CONSTRAINT "products_company_base_id_fkey";

-- DropForeignKey
ALTER TABLE "products" DROP CONSTRAINT "products_company_id_fkey";

-- DropForeignKey
ALTER TABLE "products" DROP CONSTRAINT "products_container_id_fkey";

-- DropForeignKey
ALTER TABLE "products" DROP CONSTRAINT "products_provider_id_fkey";

-- DropForeignKey
ALTER TABLE "providers" DROP CONSTRAINT "providers_company_base_id_fkey";

-- DropForeignKey
ALTER TABLE "providers" DROP CONSTRAINT "providers_company_id_fkey";

-- DropForeignKey
ALTER TABLE "reports" DROP CONSTRAINT "reports_company_base_id_fkey";

-- DropForeignKey
ALTER TABLE "reports" DROP CONSTRAINT "reports_company_id_fkey";

-- DropForeignKey
ALTER TABLE "reports" DROP CONSTRAINT "reports_deliveryman_id_fkey";

-- DropForeignKey
ALTER TABLE "reports" DROP CONSTRAINT "reports_product_id_fkey";

-- DropForeignKey
ALTER TABLE "reports" DROP CONSTRAINT "reports_ticket_partner_id_fkey";

-- DropForeignKey
ALTER TABLE "stock_by_product_price" DROP CONSTRAINT "stock_by_product_price_company_base_id_fkey";

-- DropForeignKey
ALTER TABLE "stock_by_product_price" DROP CONSTRAINT "stock_by_product_price_company_id_fkey";

-- DropForeignKey
ALTER TABLE "stock_by_product_price" DROP CONSTRAINT "stock_by_product_price_product_id_fkey";

-- DropForeignKey
ALTER TABLE "stock_daily_products" DROP CONSTRAINT "stock_daily_products_company_base_id_fkey";

-- DropForeignKey
ALTER TABLE "stock_daily_products" DROP CONSTRAINT "stock_daily_products_company_id_fkey";

-- DropForeignKey
ALTER TABLE "stock_daily_products" DROP CONSTRAINT "stock_daily_products_product_id_fkey";

-- DropForeignKey
ALTER TABLE "stock_daily_products" DROP CONSTRAINT "stock_daily_products_stock_id_fkey";

-- DropForeignKey
ALTER TABLE "stock_movements" DROP CONSTRAINT "stock_movements_company_base_id_fkey";

-- DropForeignKey
ALTER TABLE "stock_movements" DROP CONSTRAINT "stock_movements_company_id_fkey";

-- DropForeignKey
ALTER TABLE "stock_movements" DROP CONSTRAINT "stock_movements_movement_nfe_id_fkey";

-- DropForeignKey
ALTER TABLE "stock_movements" DROP CONSTRAINT "stock_movements_product_id_fkey";

-- DropForeignKey
ALTER TABLE "stock_movements" DROP CONSTRAINT "stock_movements_stock_id_fkey";

-- DropForeignKey
ALTER TABLE "stock_movements" DROP CONSTRAINT "stock_movements_stock_movement_id_fkey";

-- DropForeignKey
ALTER TABLE "stock_movements" DROP CONSTRAINT "stock_movements_user_id_fkey";

-- DropForeignKey
ALTER TABLE "stock_movements_quantities_and_values" DROP CONSTRAINT "stock_movements_quantities_and_values_stock_movement_id_fkey";

-- DropForeignKey
ALTER TABLE "stocks" DROP CONSTRAINT "stocks_company_base_id_fkey";

-- DropForeignKey
ALTER TABLE "stocks" DROP CONSTRAINT "stocks_company_id_fkey";

-- DropForeignKey
ALTER TABLE "streets" DROP CONSTRAINT "streets_company_base_id_fkey";

-- DropForeignKey
ALTER TABLE "streets" DROP CONSTRAINT "streets_company_id_fkey";

-- DropForeignKey
ALTER TABLE "streets" DROP CONSTRAINT "streets_neighborhood_id_fkey";

-- DropForeignKey
ALTER TABLE "ticket_partners" DROP CONSTRAINT "ticket_partners_company_base_id_fkey";

-- DropForeignKey
ALTER TABLE "ticket_partners" DROP CONSTRAINT "ticket_partners_company_id_fkey";

-- DropForeignKey
ALTER TABLE "user_companies" DROP CONSTRAINT "user_companies_company_base_id_fkey";

-- DropForeignKey
ALTER TABLE "user_companies" DROP CONSTRAINT "user_companies_company_id_fkey";

-- DropForeignKey
ALTER TABLE "user_companies" DROP CONSTRAINT "user_companies_user_id_fkey";

-- AlterTable
ALTER TABLE "clients" ALTER COLUMN "company_base_id" SET DATA TYPE TEXT,
ALTER COLUMN "company_id" SET DATA TYPE TEXT,
ALTER COLUMN "street_id" SET DATA TYPE TEXT;

-- AlterTable
ALTER TABLE "companies" DROP CONSTRAINT "companies_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "companies_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "companies_id_seq";

-- AlterTable
ALTER TABLE "company_bases" DROP CONSTRAINT "company_bases_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "company_id" SET DATA TYPE TEXT,
ADD CONSTRAINT "company_bases_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "company_bases_id_seq";

-- AlterTable
ALTER TABLE "daily_money_flows" ALTER COLUMN "money_flow_category_id" SET DATA TYPE TEXT,
ALTER COLUMN "company_id" SET DATA TYPE TEXT,
ALTER COLUMN "company_base_id" SET DATA TYPE TEXT,
ALTER COLUMN "order_payment_id" SET DATA TYPE TEXT;

-- AlterTable
ALTER TABLE "deliverymans" DROP CONSTRAINT "deliverymans_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "company_id" SET DATA TYPE TEXT,
ALTER COLUMN "company_base_id" SET DATA TYPE TEXT,
ALTER COLUMN "external_id" SET DATA TYPE TEXT,
ADD CONSTRAINT "deliverymans_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "deliverymans_id_seq";

-- AlterTable
ALTER TABLE "logins_company_bases" DROP CONSTRAINT "logins_company_bases_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "user_id" SET DATA TYPE TEXT,
ALTER COLUMN "company_id" SET DATA TYPE TEXT,
ALTER COLUMN "company_base_id" SET DATA TYPE TEXT,
ADD CONSTRAINT "logins_company_bases_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "logins_company_bases_id_seq";

-- AlterTable
ALTER TABLE "money_flow_categories" DROP CONSTRAINT "money_flow_categories_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "company_id" SET DATA TYPE TEXT,
ALTER COLUMN "company_base_id" SET DATA TYPE TEXT,
ADD CONSTRAINT "money_flow_categories_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "money_flow_categories_id_seq";

-- AlterTable
ALTER TABLE "movement_nfes" DROP CONSTRAINT "movement_nfes_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "provider_id" SET DATA TYPE TEXT,
ALTER COLUMN "company_base_id" DROP DEFAULT,
ALTER COLUMN "company_base_id" SET DATA TYPE TEXT,
ALTER COLUMN "company_id" DROP DEFAULT,
ALTER COLUMN "company_id" SET DATA TYPE TEXT,
ADD CONSTRAINT "movement_nfes_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "movement_nfes_id_seq";

-- AlterTable
ALTER TABLE "neighborhoods" DROP CONSTRAINT "neighborhoods_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "company_base_id" SET DATA TYPE TEXT,
ALTER COLUMN "company_id" SET DATA TYPE TEXT,
ALTER COLUMN "external_id" SET DATA TYPE TEXT,
ADD CONSTRAINT "neighborhoods_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "neighborhoods_id_seq";

-- AlterTable
ALTER TABLE "orders" ALTER COLUMN "company_id" SET DATA TYPE TEXT,
ALTER COLUMN "company_base_id" SET DATA TYPE TEXT,
ALTER COLUMN "deliveryman_id" SET DATA TYPE TEXT,
ALTER COLUMN "external_id" SET DATA TYPE TEXT;

-- AlterTable
ALTER TABLE "orders_payments" DROP CONSTRAINT "orders_payments_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "ticket_partner_id" SET DATA TYPE TEXT,
ADD CONSTRAINT "orders_payments_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "orders_payments_id_seq";

-- AlterTable
ALTER TABLE "orders_products" DROP CONSTRAINT "orders_products_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "product_id" SET DATA TYPE TEXT,
ADD CONSTRAINT "orders_products_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "orders_products_id_seq";

-- AlterTable
ALTER TABLE "orders_products_buy_price" DROP CONSTRAINT "orders_products_buy_price_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "product_id" SET DATA TYPE TEXT,
ALTER COLUMN "stock_by_product_price_id" SET DATA TYPE TEXT,
ADD CONSTRAINT "orders_products_buy_price_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "orders_products_buy_price_id_seq";

-- AlterTable
ALTER TABLE "product_categories" DROP CONSTRAINT "product_categories_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "company_id" SET DATA TYPE TEXT,
ALTER COLUMN "company_base_id" SET DATA TYPE TEXT,
ADD CONSTRAINT "product_categories_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "product_categories_id_seq";

-- AlterTable
ALTER TABLE "product_codes_nfes" DROP CONSTRAINT "product_codes_nfes_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "provider_id" SET DATA TYPE TEXT,
ALTER COLUMN "product_id" SET DATA TYPE TEXT,
ADD CONSTRAINT "product_codes_nfes_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "product_codes_nfes_id_seq";

-- AlterTable
ALTER TABLE "product_unities" DROP CONSTRAINT "product_unities_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "company_id" SET DATA TYPE TEXT,
ALTER COLUMN "company_base_id" SET DATA TYPE TEXT,
ADD CONSTRAINT "product_unities_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "product_unities_id_seq";

-- AlterTable
ALTER TABLE "products" DROP CONSTRAINT "products_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "buy_unity_id" SET DATA TYPE TEXT,
ALTER COLUMN "sell_unity_id" SET DATA TYPE TEXT,
ALTER COLUMN "category_id" SET DATA TYPE TEXT,
ALTER COLUMN "company_id" SET DATA TYPE TEXT,
ALTER COLUMN "company_base_id" SET DATA TYPE TEXT,
ALTER COLUMN "provider_id" SET DATA TYPE TEXT,
ALTER COLUMN "external_id" SET DATA TYPE TEXT,
ALTER COLUMN "container_id" SET DATA TYPE TEXT,
ADD CONSTRAINT "products_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "products_id_seq";

-- AlterTable
ALTER TABLE "providers" DROP CONSTRAINT "providers_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "company_id" SET DATA TYPE TEXT,
ALTER COLUMN "company_base_id" SET DATA TYPE TEXT,
ADD CONSTRAINT "providers_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "providers_id_seq";

-- AlterTable
ALTER TABLE "reports" DROP CONSTRAINT "reports_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "product_id" SET DATA TYPE TEXT,
ALTER COLUMN "company_base_id" SET DATA TYPE TEXT,
ALTER COLUMN "company_id" SET DATA TYPE TEXT,
ALTER COLUMN "deliveryman_id" SET DATA TYPE TEXT,
ALTER COLUMN "ticket_partner_id" SET DATA TYPE TEXT,
ADD CONSTRAINT "reports_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "reports_id_seq";

-- AlterTable
ALTER TABLE "stock_by_product_price" DROP CONSTRAINT "stock_by_product_price_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "product_id" SET DATA TYPE TEXT,
ALTER COLUMN "company_id" SET DATA TYPE TEXT,
ALTER COLUMN "company_base_id" SET DATA TYPE TEXT,
ADD CONSTRAINT "stock_by_product_price_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "stock_by_product_price_id_seq";

-- AlterTable
ALTER TABLE "stock_daily_products" DROP CONSTRAINT "stock_daily_products_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "stock_id" SET DATA TYPE TEXT,
ALTER COLUMN "product_id" SET DATA TYPE TEXT,
ALTER COLUMN "company_id" SET DATA TYPE TEXT,
ALTER COLUMN "company_base_id" SET DATA TYPE TEXT,
ADD CONSTRAINT "stock_daily_products_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "stock_daily_products_id_seq";

-- AlterTable
ALTER TABLE "stock_movements" DROP CONSTRAINT "stock_movements_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "user_id" SET DATA TYPE TEXT,
ALTER COLUMN "product_id" SET DATA TYPE TEXT,
ALTER COLUMN "stock_id" SET DATA TYPE TEXT,
ALTER COLUMN "company_base_id" SET DATA TYPE TEXT,
ALTER COLUMN "company_id" SET DATA TYPE TEXT,
ALTER COLUMN "movement_nfe_id" SET DATA TYPE TEXT,
ALTER COLUMN "stock_movement_id" SET DATA TYPE TEXT,
ADD CONSTRAINT "stock_movements_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "stock_movements_id_seq";

-- AlterTable
ALTER TABLE "stock_movements_quantities_and_values" DROP CONSTRAINT "stock_movements_quantities_and_values_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "stock_movement_id" SET DATA TYPE TEXT,
ADD CONSTRAINT "stock_movements_quantities_and_values_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "stock_movements_quantities_and_values_id_seq";

-- AlterTable
ALTER TABLE "stocks" DROP CONSTRAINT "stocks_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "company_id" SET DATA TYPE TEXT,
ALTER COLUMN "company_base_id" SET DATA TYPE TEXT,
ADD CONSTRAINT "stocks_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "stocks_id_seq";

-- AlterTable
ALTER TABLE "streets" DROP CONSTRAINT "streets_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "company_base_id" SET DATA TYPE TEXT,
ALTER COLUMN "company_id" SET DATA TYPE TEXT,
ALTER COLUMN "neighborhood_id" SET DATA TYPE TEXT,
ALTER COLUMN "external_id" SET DATA TYPE TEXT,
ADD CONSTRAINT "streets_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "streets_id_seq";

-- AlterTable
ALTER TABLE "ticket_partners" DROP CONSTRAINT "ticket_partners_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "company_id" SET DATA TYPE TEXT,
ALTER COLUMN "company_base_id" SET DATA TYPE TEXT,
ALTER COLUMN "external_id" SET DATA TYPE TEXT,
ADD CONSTRAINT "ticket_partners_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "ticket_partners_id_seq";

-- AlterTable
ALTER TABLE "user_companies" DROP CONSTRAINT "user_companies_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "user_id" SET DATA TYPE TEXT,
ALTER COLUMN "company_id" SET DATA TYPE TEXT,
ALTER COLUMN "company_base_id" SET DATA TYPE TEXT,
ADD CONSTRAINT "user_companies_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "user_companies_id_seq";

-- AlterTable
ALTER TABLE "users" DROP CONSTRAINT "users_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "users_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "users_id_seq";

-- DropEnum
DROP TYPE "OperationsType";

-- AddForeignKey
ALTER TABLE "product_unities" ADD CONSTRAINT "product_unities_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "companies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "product_unities" ADD CONSTRAINT "product_unities_company_base_id_fkey" FOREIGN KEY ("company_base_id") REFERENCES "company_bases"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "product_categories" ADD CONSTRAINT "product_categories_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "companies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "product_categories" ADD CONSTRAINT "product_categories_company_base_id_fkey" FOREIGN KEY ("company_base_id") REFERENCES "company_bases"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "stocks" ADD CONSTRAINT "stocks_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "companies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "stocks" ADD CONSTRAINT "stocks_company_base_id_fkey" FOREIGN KEY ("company_base_id") REFERENCES "company_bases"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "providers" ADD CONSTRAINT "providers_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "companies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "providers" ADD CONSTRAINT "providers_company_base_id_fkey" FOREIGN KEY ("company_base_id") REFERENCES "company_bases"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "products" ADD CONSTRAINT "products_category_id_fkey" FOREIGN KEY ("category_id") REFERENCES "product_categories"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "products" ADD CONSTRAINT "products_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "companies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "products" ADD CONSTRAINT "products_company_base_id_fkey" FOREIGN KEY ("company_base_id") REFERENCES "company_bases"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "products" ADD CONSTRAINT "products_provider_id_fkey" FOREIGN KEY ("provider_id") REFERENCES "providers"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "products" ADD CONSTRAINT "products_container_id_fkey" FOREIGN KEY ("container_id") REFERENCES "products"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "daily_money_flows" ADD CONSTRAINT "daily_money_flows_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "companies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "daily_money_flows" ADD CONSTRAINT "daily_money_flows_company_base_id_fkey" FOREIGN KEY ("company_base_id") REFERENCES "company_bases"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "daily_money_flows" ADD CONSTRAINT "daily_money_flows_money_flow_category_id_fkey" FOREIGN KEY ("money_flow_category_id") REFERENCES "money_flow_categories"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "daily_money_flows" ADD CONSTRAINT "daily_money_flows_order_payment_id_fkey" FOREIGN KEY ("order_payment_id") REFERENCES "orders_payments"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "money_flow_categories" ADD CONSTRAINT "money_flow_categories_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "companies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "money_flow_categories" ADD CONSTRAINT "money_flow_categories_company_base_id_fkey" FOREIGN KEY ("company_base_id") REFERENCES "company_bases"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "product_codes_nfes" ADD CONSTRAINT "product_codes_nfes_provider_id_fkey" FOREIGN KEY ("provider_id") REFERENCES "providers"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "product_codes_nfes" ADD CONSTRAINT "product_codes_nfes_product_id_fkey" FOREIGN KEY ("product_id") REFERENCES "products"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "movement_nfes" ADD CONSTRAINT "movement_nfes_provider_id_fkey" FOREIGN KEY ("provider_id") REFERENCES "providers"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "movement_nfes" ADD CONSTRAINT "movement_nfes_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "companies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "movement_nfes" ADD CONSTRAINT "movement_nfes_company_base_id_fkey" FOREIGN KEY ("company_base_id") REFERENCES "company_bases"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "stock_daily_products" ADD CONSTRAINT "stock_daily_products_stock_id_fkey" FOREIGN KEY ("stock_id") REFERENCES "stocks"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "stock_daily_products" ADD CONSTRAINT "stock_daily_products_product_id_fkey" FOREIGN KEY ("product_id") REFERENCES "products"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "stock_daily_products" ADD CONSTRAINT "stock_daily_products_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "companies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "stock_daily_products" ADD CONSTRAINT "stock_daily_products_company_base_id_fkey" FOREIGN KEY ("company_base_id") REFERENCES "company_bases"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ticket_partners" ADD CONSTRAINT "ticket_partners_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "companies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ticket_partners" ADD CONSTRAINT "ticket_partners_company_base_id_fkey" FOREIGN KEY ("company_base_id") REFERENCES "company_bases"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "deliverymans" ADD CONSTRAINT "deliverymans_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "companies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "deliverymans" ADD CONSTRAINT "deliverymans_company_base_id_fkey" FOREIGN KEY ("company_base_id") REFERENCES "company_bases"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "orders" ADD CONSTRAINT "orders_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "companies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "orders" ADD CONSTRAINT "orders_company_base_id_fkey" FOREIGN KEY ("company_base_id") REFERENCES "company_bases"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "orders" ADD CONSTRAINT "orders_deliveryman_id_fkey" FOREIGN KEY ("deliveryman_id") REFERENCES "deliverymans"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "orders_products" ADD CONSTRAINT "orders_products_product_id_fkey" FOREIGN KEY ("product_id") REFERENCES "products"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "orders_products_buy_price" ADD CONSTRAINT "orders_products_buy_price_product_id_fkey" FOREIGN KEY ("product_id") REFERENCES "products"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "orders_products_buy_price" ADD CONSTRAINT "orders_products_buy_price_stock_by_product_price_id_fkey" FOREIGN KEY ("stock_by_product_price_id") REFERENCES "stock_by_product_price"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "orders_payments" ADD CONSTRAINT "orders_payments_ticket_partner_id_fkey" FOREIGN KEY ("ticket_partner_id") REFERENCES "ticket_partners"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "stock_by_product_price" ADD CONSTRAINT "stock_by_product_price_product_id_fkey" FOREIGN KEY ("product_id") REFERENCES "products"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "stock_by_product_price" ADD CONSTRAINT "stock_by_product_price_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "companies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "stock_by_product_price" ADD CONSTRAINT "stock_by_product_price_company_base_id_fkey" FOREIGN KEY ("company_base_id") REFERENCES "company_bases"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "company_bases" ADD CONSTRAINT "company_bases_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "companies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "user_companies" ADD CONSTRAINT "user_companies_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "user_companies" ADD CONSTRAINT "user_companies_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "companies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "user_companies" ADD CONSTRAINT "user_companies_company_base_id_fkey" FOREIGN KEY ("company_base_id") REFERENCES "company_bases"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "stock_movements" ADD CONSTRAINT "stock_movements_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "stock_movements" ADD CONSTRAINT "stock_movements_product_id_fkey" FOREIGN KEY ("product_id") REFERENCES "products"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "stock_movements" ADD CONSTRAINT "stock_movements_stock_id_fkey" FOREIGN KEY ("stock_id") REFERENCES "stocks"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "stock_movements" ADD CONSTRAINT "stock_movements_company_base_id_fkey" FOREIGN KEY ("company_base_id") REFERENCES "company_bases"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "stock_movements" ADD CONSTRAINT "stock_movements_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "companies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "stock_movements" ADD CONSTRAINT "stock_movements_movement_nfe_id_fkey" FOREIGN KEY ("movement_nfe_id") REFERENCES "movement_nfes"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "stock_movements" ADD CONSTRAINT "stock_movements_stock_movement_id_fkey" FOREIGN KEY ("stock_movement_id") REFERENCES "stock_movements"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "stock_movements_quantities_and_values" ADD CONSTRAINT "stock_movements_quantities_and_values_stock_movement_id_fkey" FOREIGN KEY ("stock_movement_id") REFERENCES "stock_movements"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "logins_company_bases" ADD CONSTRAINT "logins_company_bases_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "logins_company_bases" ADD CONSTRAINT "logins_company_bases_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "companies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "logins_company_bases" ADD CONSTRAINT "logins_company_bases_company_base_id_fkey" FOREIGN KEY ("company_base_id") REFERENCES "company_bases"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "clients" ADD CONSTRAINT "clients_company_base_id_fkey" FOREIGN KEY ("company_base_id") REFERENCES "company_bases"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "clients" ADD CONSTRAINT "clients_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "companies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "clients" ADD CONSTRAINT "clients_street_id_fkey" FOREIGN KEY ("street_id") REFERENCES "streets"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "reports" ADD CONSTRAINT "reports_ticket_partner_id_fkey" FOREIGN KEY ("ticket_partner_id") REFERENCES "ticket_partners"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "reports" ADD CONSTRAINT "reports_deliveryman_id_fkey" FOREIGN KEY ("deliveryman_id") REFERENCES "deliverymans"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "reports" ADD CONSTRAINT "reports_product_id_fkey" FOREIGN KEY ("product_id") REFERENCES "products"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "reports" ADD CONSTRAINT "reports_company_base_id_fkey" FOREIGN KEY ("company_base_id") REFERENCES "company_bases"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "reports" ADD CONSTRAINT "reports_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "companies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "neighborhoods" ADD CONSTRAINT "neighborhoods_company_base_id_fkey" FOREIGN KEY ("company_base_id") REFERENCES "company_bases"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "neighborhoods" ADD CONSTRAINT "neighborhoods_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "companies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "streets" ADD CONSTRAINT "streets_company_base_id_fkey" FOREIGN KEY ("company_base_id") REFERENCES "company_bases"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "streets" ADD CONSTRAINT "streets_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "companies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "streets" ADD CONSTRAINT "streets_neighborhood_id_fkey" FOREIGN KEY ("neighborhood_id") REFERENCES "neighborhoods"("id") ON DELETE SET NULL ON UPDATE CASCADE;
