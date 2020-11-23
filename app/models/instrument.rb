class Instrument < ApplicationRecord
  has_many :rental_requests
  belongs_to :user
end
