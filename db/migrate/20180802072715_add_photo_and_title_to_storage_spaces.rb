class AddPhotoAndTitleToStorageSpaces < ActiveRecord::Migration[5.2]
  def change
    add_column :storage_spaces, :photo, :string
    add_column :storage_spaces, :title, :string
  end
end
