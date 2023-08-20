-- CreateTable
CREATE TABLE "neighborhood" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "company_base_id" INTEGER NOT NULL,
    "company_id" INTEGER NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "update_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "neighborhood_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "street" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "company_base_id" INTEGER NOT NULL,
    "company_id" INTEGER NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "update_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "street_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "neighborhood" ADD CONSTRAINT "neighborhood_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "companies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "neighborhood" ADD CONSTRAINT "neighborhood_company_base_id_fkey" FOREIGN KEY ("company_base_id") REFERENCES "company_bases"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "street" ADD CONSTRAINT "street_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "companies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "street" ADD CONSTRAINT "street_company_base_id_fkey" FOREIGN KEY ("company_base_id") REFERENCES "company_bases"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
