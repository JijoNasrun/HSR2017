class AddImageToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :user_image, :string
  end
end
