class CreateProductos < ActiveRecord::Migration[6.1]
  def change
    create_table :productos do |t|
      t.string :nombre
      t.integer :precio
      t.string :descripción
      t.string :categoria
      t.integer :valoración
      t.integer :feeling

      t.timestamps
    end
  end
end
