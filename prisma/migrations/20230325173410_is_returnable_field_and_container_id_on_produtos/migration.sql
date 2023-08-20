-- AlterTable
ALTER TABLE "products" ADD COLUMN     "container_id" INTEGER,
ADD COLUMN     "is_returnable" BOOLEAN NOT NULL DEFAULT false;
