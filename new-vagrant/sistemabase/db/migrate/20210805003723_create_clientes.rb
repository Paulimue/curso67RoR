class CreateClientes < ActiveRecord::Migration[6.1]
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :apellido
      t.string :email
      t.string :contraseña

      t.timestamps
    end
  end
end
