class CreateVenta < ActiveRecord::Migration[6.1]
  def change
    create_table :venta do |t|
      t.integer :fecha
      t.string :cliente
      t.integer :descuento
      t.integer :monto
      t.integer :cantidad

      t.timestamps
    end
  end
end
