class StorageSpace < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :title, presence: true
  mount_uploader :photo, PhotoUploader
end
