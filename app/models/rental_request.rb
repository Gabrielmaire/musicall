class RentalRequest < ApplicationRecord
  belongs_to :renter, class_name: "User"
  belongs_to :instrument
end
