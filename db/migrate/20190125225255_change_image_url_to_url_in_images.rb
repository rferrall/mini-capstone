class ChangeImageUrlToUrlInImages < ActiveRecord::Migration[5.2]
  def change

    rename_column :images, :image_url, :url
  end
end
