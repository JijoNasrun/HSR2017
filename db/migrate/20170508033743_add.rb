class Add < ActiveRecord::Migration[5.0]
  def change
  	add_column :reports, :date_captured, :datetime
  end
end
