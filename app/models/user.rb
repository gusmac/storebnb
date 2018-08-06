class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :reviews, through: :bookings
  has_many :storage_spaces
  has_many :bookings
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
