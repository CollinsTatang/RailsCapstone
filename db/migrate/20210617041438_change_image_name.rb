class ChangeImageName < ActiveRecord::Migration[6.1]
  def change
    rename_column :articles, :image, :image_data
  end
end
