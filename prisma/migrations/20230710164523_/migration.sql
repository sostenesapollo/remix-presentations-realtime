-- AlterTable
ALTER TABLE "neighborhoods" ADD COLUMN     "active" BOOLEAN NOT NULL DEFAULT true;

-- AlterTable
ALTER TABLE "streets" ADD COLUMN     "active" BOOLEAN NOT NULL DEFAULT true;
