class CreateTablaejemplo3s < ActiveRecord::Migration
  def change
    create_table :tablaejemplo3s do |t|
      t.string :nombre
      t.string :apellidos

      t.timestamps
    end
  end
end
