class AddImageToClient1s < ActiveRecord::Migration
  def change
    add_column :client1s, :image, :string
  end
end
