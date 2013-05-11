class CreateBaseclientes < ActiveRecord::Migration
  def change
    create_table :baseclientes do |t|

      t.timestamps
    end
  end
end
