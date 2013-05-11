class CreateClient1s < ActiveRecord::Migration
  def change
    create_table :client1s do |t|
      t.string :name
      t.date :birth
      t.string :gender
      t.string :country
      t.string :city
      t.string :avatar

      t.timestamps
    end
  end
end
