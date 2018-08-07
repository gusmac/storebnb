class StorageSpace < ApplicationRecord
  include PgSearch
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  validates :title, presence: true
  mount_uploader :photo, PhotoUploader
  geocoded_by :address_city
  after_validation :geocode, if: :will_save_change_to_address_city?

  pg_search_scope :storage_query,
    against: [ :title, :description, :capacity, :address_city ],
    :using => {tsearch: {
      prefix: true}
    }
    # :using => [:trigram, :tsearch]
end
