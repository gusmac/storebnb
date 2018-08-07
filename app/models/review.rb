class Review < ApplicationRecord
  has_one :booking, dependent: :nullify
  has_one :user, through: :booking
  has_one :storage_space, through: :booking
end
