class ReportImage < ActiveRecord::Migration[5.0]
  def change
  	add_column :reports, :report_image, :string
  end
end
