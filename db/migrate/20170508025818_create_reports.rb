class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.integer :device_id
      t.string :description
      t.timestamps :date_captured
      t.timestamps
    end
  end
end
