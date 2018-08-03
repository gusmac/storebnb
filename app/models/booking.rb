class Booking < ApplicationRecord
  belongs_to :review, optional: true
  belongs_to :user
  belongs_to :storage_space
end
