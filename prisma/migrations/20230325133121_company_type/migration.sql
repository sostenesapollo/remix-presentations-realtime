-- CreateEnum
CREATE TYPE "CompanyBusinessTypes" AS ENUM ('GAS_DELIVERY', 'COMERCIAL');

-- AlterTable
ALTER TABLE "company_bases" ADD COLUMN     "company_business_type" "CompanyBusinessTypes" NOT NULL DEFAULT 'GAS_DELIVERY';
