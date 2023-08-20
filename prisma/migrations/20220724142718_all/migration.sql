-- AddForeignKey
ALTER TABLE "operations_company_base" ADD CONSTRAINT "operations_company_base_operation_id_fkey" FOREIGN KEY ("operation_id") REFERENCES "operations"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
