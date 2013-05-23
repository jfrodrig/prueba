class AddAvatarToClient1 < ActiveRecord::Migration
  def change
    add_column :client1s, :avatar, :string
  end
end
