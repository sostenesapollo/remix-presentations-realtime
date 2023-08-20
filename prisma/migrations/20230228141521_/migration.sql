-- CreateTable
CREATE TABLE "stock_movements_quantities_and_values" (
    "id" SERIAL NOT NULL,
    "quantity" DOUBLE PRECISION NOT NULL,
    "unit_value" DOUBLE PRECISION,
    "stock_movement_id" INTEGER NOT NULL,

    CONSTRAINT "stock_movements_quantities_and_values_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "stock_movements_quantities_and_values" ADD CONSTRAINT "stock_movements_quantities_and_values_stock_movement_id_fkey" FOREIGN KEY ("stock_movement_id") REFERENCES "stock_movements"("id") ON DELETE CASCADE ON UPDATE CASCADE;
