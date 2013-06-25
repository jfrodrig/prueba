class AddPartNumberToJhon < ActiveRecord::Migration
  def change
      add_column :products, :part3_number, :string
  end
end
