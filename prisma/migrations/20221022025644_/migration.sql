/*
  Warnings:

  - You are about to drop the column `operation_id` on the `movement_nfes` table. All the data in the column will be lost.
  - You are about to drop the `operations` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `operations_company_base` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "movement_nfes" DROP CONSTRAINT "movement_nfes_operation_id_fkey";

-- DropForeignKey
ALTER TABLE "operations_company_base" DROP CONSTRAINT "operations_company_base_company_base_id_fkey";

-- DropForeignKey
ALTER TABLE "operations_company_base" DROP CONSTRAINT "operations_company_base_company_id_fkey";

-- DropForeignKey
ALTER TABLE "operations_company_base" DROP CONSTRAINT "operations_company_base_operation_id_fkey";

-- DropForeignKey
ALTER TABLE "permission_profiles_operations" DROP CONSTRAINT "permission_profiles_operations_operation_id_fkey";

-- DropForeignKey
ALTER TABLE "stock_movements" DROP CONSTRAINT "stock_movements_operation_id_fkey";

-- AlterTable
ALTER TABLE "movement_nfes" DROP COLUMN "operation_id";

-- DropTable
DROP TABLE "operations";

-- DropTable
DROP TABLE "operations_company_base";
