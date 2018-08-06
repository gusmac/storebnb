class Booking < ApplicationRecord
  has_one :review
  belongs_to :review, optional: true
  belongs_to :user
  belongs_to :storage_space
end
