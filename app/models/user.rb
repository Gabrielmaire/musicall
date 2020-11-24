class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # en tant que Owner
  has_many :instruments, foreign_key: :owner_id, dependent: :destroy
  has_many :reservations, through: :instruments, source: :rental_requests
  # En tant que renter
  has_many :rental_requests, foreign_key: :renter_id
  has_one_attached :avatar
end
