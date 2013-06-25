class AddPartNumberToProducts3 < ActiveRecord::Migration
  def change
    add_column :products, :part2_number, :string
  end
end
