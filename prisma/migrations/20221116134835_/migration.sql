/*
  Warnings:

  - Added the required column `filter` to the `neighborhoods` table without a default value. This is not possible if the table is not empty.
  - Added the required column `filter` to the `streets` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "neighborhoods" ADD COLUMN     "filter" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "streets" ADD COLUMN     "filter" TEXT NOT NULL;
