-- CreateTable
CREATE TABLE "daily_money_flows" (
    "id" SERIAL NOT NULL,
    "description" TEXT NOT NULL,
    "money_flow_category_id" INTEGER NOT NULL,
    "price" DOUBLE PRECISION NOT NULL DEFAULT 0,
    "is_entrance" BOOLEAN NOT NULL DEFAULT false,
    "company_id" INTEGER NOT NULL,
    "company_base_id" INTEGER NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "daily_money_flows_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "money_flow_categories" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "company_id" INTEGER NOT NULL,
    "company_base_id" INTEGER NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "money_flow_categories_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "daily_money_flows" ADD CONSTRAINT "daily_money_flows_money_flow_category_id_fkey" FOREIGN KEY ("money_flow_category_id") REFERENCES "money_flow_categories"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "daily_money_flows" ADD CONSTRAINT "daily_money_flows_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "companies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "daily_money_flows" ADD CONSTRAINT "daily_money_flows_company_base_id_fkey" FOREIGN KEY ("company_base_id") REFERENCES "company_bases"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "money_flow_categories" ADD CONSTRAINT "money_flow_categories_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "companies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "money_flow_categories" ADD CONSTRAINT "money_flow_categories_company_base_id_fkey" FOREIGN KEY ("company_base_id") REFERENCES "company_bases"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
