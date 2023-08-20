/*
  Warnings:

  - You are about to drop the column `state` on the `users` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "company_bases" ADD COLUMN     "state" TEXT;

-- AlterTable
ALTER TABLE "users" DROP COLUMN "state";
