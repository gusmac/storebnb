class CreateStorages < ActiveRecord::Migration[5.2]
  def change
    create_table :storages do |t|
      t.references :user, foreign_key: true
      t.text :description
      t.string :address_city
      t.string :address_zip_code
      t.string :address_country
      t.string :capacity

      t.timestamps
    end
  end
end
