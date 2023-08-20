-- DropForeignKey
ALTER TABLE "daily_money_flows" DROP CONSTRAINT "daily_money_flows_money_flow_category_id_fkey";

-- AlterTable
ALTER TABLE "daily_money_flows" ALTER COLUMN "money_flow_category_id" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "daily_money_flows" ADD CONSTRAINT "daily_money_flows_money_flow_category_id_fkey" FOREIGN KEY ("money_flow_category_id") REFERENCES "money_flow_categories"("id") ON DELETE SET NULL ON UPDATE CASCADE;
