class StorageSpace < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  validates :title, presence: true
  geocoded_by :address_city
  after_validation :geocode, if: :will_save_change_to_address_city?
end
