/*
  Warnings:

  - You are about to drop the column `state_id` on the `cities` table. All the data in the column will be lost.
  - You are about to drop the `states` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "cities" DROP CONSTRAINT "cities_state_id_fkey";

-- AlterTable
ALTER TABLE "cities" DROP COLUMN "state_id",
ADD COLUMN     "state" TEXT;

-- DropTable
DROP TABLE "states";
