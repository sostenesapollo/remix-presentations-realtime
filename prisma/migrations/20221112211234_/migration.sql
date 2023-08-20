-- CreateEnum
CREATE TYPE "OrderStatus" AS ENUM ('NONE', 'PAID', 'SENT', 'TRANSIT');

-- AlterTable
ALTER TABLE "orders" ADD COLUMN     "paid" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "status" "OrderStatus" NOT NULL DEFAULT E'NONE';
