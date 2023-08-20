/*
  Warnings:

  - You are about to drop the column `filter` on the `neighborhoods` table. All the data in the column will be lost.
  - You are about to drop the column `filter` on the `streets` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "neighborhoods" DROP COLUMN "filter";

-- AlterTable
ALTER TABLE "streets" DROP COLUMN "filter";
