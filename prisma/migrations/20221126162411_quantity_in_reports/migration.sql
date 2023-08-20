-- CreateTable
CREATE TABLE "reports" (
    "id" SERIAL NOT NULL,
    "year" INTEGER NOT NULL,
    "month" INTEGER NOT NULL,
    "product_id" INTEGER NOT NULL,
    "type" TEXT NOT NULL,
    "identifier" TEXT,
    "quantity" DOUBLE PRECISION NOT NULL DEFAULT 0,
    "company_base_id" INTEGER NOT NULL,
    "company_id" INTEGER NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "update_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "reports_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "reports" ADD CONSTRAINT "reports_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "companies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "reports" ADD CONSTRAINT "reports_company_base_id_fkey" FOREIGN KEY ("company_base_id") REFERENCES "company_bases"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
