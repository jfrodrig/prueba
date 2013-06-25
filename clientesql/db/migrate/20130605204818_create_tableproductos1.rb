class CreateTableproductos1 < ActiveRecord::Migration
  def change
    create_table :tableproductos1s do |t|
      t.string:name
      t.text:apellidos
    end
  end
end
