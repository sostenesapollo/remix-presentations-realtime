-- AddForeignKey
ALTER TABLE "products" ADD CONSTRAINT "products_container_id_fkey" FOREIGN KEY ("container_id") REFERENCES "products"("id") ON DELETE SET NULL ON UPDATE CASCADE;
