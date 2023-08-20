/*
  Warnings:

  - You are about to drop the column `is_admin` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `permission_profile_id` on the `users` table. All the data in the column will be lost.
  - You are about to drop the `modules` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `permission_profiles` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `permission_profiles_modules` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `permission_profiles_operations` table. If the table is not empty, all the data it contains will be lost.

*/
-- CreateEnum
CREATE TYPE "ProfileType" AS ENUM ('ADMIN', 'PROFESSIONAL');

-- DropForeignKey
ALTER TABLE "modules" DROP CONSTRAINT "modules_module_id_fkey";

-- DropForeignKey
ALTER TABLE "permission_profiles" DROP CONSTRAINT "permission_profiles_company_base_id_fkey";

-- DropForeignKey
ALTER TABLE "permission_profiles" DROP CONSTRAINT "permission_profiles_company_id_fkey";

-- DropForeignKey
ALTER TABLE "permission_profiles_modules" DROP CONSTRAINT "permission_profiles_modules_company_base_id_fkey";

-- DropForeignKey
ALTER TABLE "permission_profiles_modules" DROP CONSTRAINT "permission_profiles_modules_company_id_fkey";

-- DropForeignKey
ALTER TABLE "permission_profiles_modules" DROP CONSTRAINT "permission_profiles_modules_module_id_fkey";

-- DropForeignKey
ALTER TABLE "permission_profiles_modules" DROP CONSTRAINT "permission_profiles_modules_permission_profile_id_fkey";

-- DropForeignKey
ALTER TABLE "permission_profiles_operations" DROP CONSTRAINT "permission_profiles_operations_company_base_id_fkey";

-- DropForeignKey
ALTER TABLE "permission_profiles_operations" DROP CONSTRAINT "permission_profiles_operations_company_id_fkey";

-- DropForeignKey
ALTER TABLE "permission_profiles_operations" DROP CONSTRAINT "permission_profiles_operations_permission_profile_id_fkey";

-- DropForeignKey
ALTER TABLE "users" DROP CONSTRAINT "users_permission_profile_id_fkey";

-- AlterTable
ALTER TABLE "users" DROP COLUMN "is_admin",
DROP COLUMN "permission_profile_id",
ADD COLUMN     "access_level" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "profile_type" "ProfileType" NOT NULL DEFAULT E'PROFESSIONAL';

-- DropTable
DROP TABLE "modules";

-- DropTable
DROP TABLE "permission_profiles";

-- DropTable
DROP TABLE "permission_profiles_modules";

-- DropTable
DROP TABLE "permission_profiles_operations";
