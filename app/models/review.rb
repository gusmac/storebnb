class Review < ApplicationRecord
  has_one :booking
  has_one :user, through: :booking
  has_one :storage_space, through: :booking
end
