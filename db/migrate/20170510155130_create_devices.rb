class CreateDevices < ActiveRecord::Migration[5.0]
  def change
    create_table :devices do |t|
      t.integer :owner_id
      t.string :address
      t.string :latitude
      t.string :longitude
      t.timestamps
    end
  end
end
