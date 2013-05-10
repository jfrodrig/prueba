class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :name
      t.string :ident
      t.date :birth
      t.string :gender
      t.string :country
      t.string :departament
      t.string :city
      t.string :avatar

      t.timestamps
    end
  end
end
