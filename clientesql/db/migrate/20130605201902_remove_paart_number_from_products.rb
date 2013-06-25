class RemovePaartNumberFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :part2_number, :string
  end
end
