class AddImagesToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :image, :json
  end
end
