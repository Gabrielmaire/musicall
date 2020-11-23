class Instrument < ApplicationRecord
  has_many :rental_requests, foreign_key: :renter_id
  belongs_to :owner, class_name: "User"
end
