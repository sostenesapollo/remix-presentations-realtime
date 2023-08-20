/*
  Warnings:

  - You are about to drop the `logins_company_bases` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "logins_company_bases" DROP CONSTRAINT "logins_company_bases_company_base_id_fkey";

-- DropForeignKey
ALTER TABLE "logins_company_bases" DROP CONSTRAINT "logins_company_bases_company_id_fkey";

-- DropForeignKey
ALTER TABLE "logins_company_bases" DROP CONSTRAINT "logins_company_bases_user_id_fkey";

-- DropTable
DROP TABLE "logins_company_bases";
