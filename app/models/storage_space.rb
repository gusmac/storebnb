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
    against: [ :title, :description, :capacity, :address_city, :address_country, :address_zip_code ],
    using: { using: { tsearch: { any_word: true, dictionary: :english, prefix: true, trigram: true }
    },
    # ignoring: :accents,
     associated_against: {
      review: [ :description ]
    }
  }
    #
  # multisearchable :against => [:title, :description, :capacity, :address_city, :address_country, :address_zip_code]
end
