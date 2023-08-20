-- DropForeignKey
ALTER TABLE "users" DROP CONSTRAINT "users_permission_profile_id_fkey";

-- AlterTable
ALTER TABLE "users" ALTER COLUMN "permission_profile_id" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "users" ADD CONSTRAINT "users_permission_profile_id_fkey" FOREIGN KEY ("permission_profile_id") REFERENCES "permission_profiles"("id") ON DELETE SET NULL ON UPDATE CASCADE;
