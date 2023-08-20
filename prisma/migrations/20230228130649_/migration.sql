-- CreateTable
CREATE TABLE "stock_movements_quantities_and_unit_value" (
    "id" SERIAL NOT NULL,
    "quantity" DOUBLE PRECISION NOT NULL,
    "unit_value" DOUBLE PRECISION,
    "stock_movement_id" INTEGER,

    CONSTRAINT "stock_movements_quantities_and_unit_value_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "stock_movements_quantities_and_unit_value" ADD CONSTRAINT "stock_movements_quantities_and_unit_value_stock_movement_i_fkey" FOREIGN KEY ("stock_movement_id") REFERENCES "stock_movements"("id") ON DELETE SET NULL ON UPDATE CASCADE;
