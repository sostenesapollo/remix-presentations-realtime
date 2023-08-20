-- CreateTable
CREATE TABLE "deliverymans" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "active" BOOLEAN NOT NULL DEFAULT true,
    "color" TEXT NOT NULL DEFAULT E'#ffedd5',
    "company_id" INTEGER NOT NULL,
    "company_base_id" INTEGER NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "update_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "deliverymans_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "deliverymans" ADD CONSTRAINT "deliverymans_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "companies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "deliverymans" ADD CONSTRAINT "deliverymans_company_base_id_fkey" FOREIGN KEY ("company_base_id") REFERENCES "company_bases"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
