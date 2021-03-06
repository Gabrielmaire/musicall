class Instrument < ApplicationRecord
  has_many :rental_requests, foreign_key: :renter_id
  belongs_to :owner, class_name: "User"
  has_one_attached :photo

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
