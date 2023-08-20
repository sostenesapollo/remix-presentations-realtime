-- AlterTable
ALTER TABLE "movement_nfes" ADD COLUMN     "due_date" TIMESTAMP(3),
ADD COLUMN     "nfe_value" DOUBLE PRECISION,
ADD COLUMN     "paid" BOOLEAN NOT NULL DEFAULT false;
