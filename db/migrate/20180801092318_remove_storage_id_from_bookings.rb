class RemoveStorageIdFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :storage_id
    add_reference :bookings, :storage_space, foreign_key: true
  end
end
