/*
  Warnings:

  - The values [TRANSFERENCE] on the enum `PaymentMethods` will be removed. If these variants are still used in the database, this will fail.

*/
-- AlterEnum
BEGIN;
CREATE TYPE "PaymentMethods_new" AS ENUM ('MONEY', 'CARD', 'TRANSFER', 'TICKET');
ALTER TABLE "orders_payments" ALTER COLUMN "method" TYPE "PaymentMethods_new" USING ("method"::text::"PaymentMethods_new");
ALTER TYPE "PaymentMethods" RENAME TO "PaymentMethods_old";
ALTER TYPE "PaymentMethods_new" RENAME TO "PaymentMethods";
DROP TYPE "PaymentMethods_old";
COMMIT;
