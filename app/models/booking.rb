class Booking < ApplicationRecord
  belongs_to :review
  belongs_to :user
  belongs_to :storage_space
end
