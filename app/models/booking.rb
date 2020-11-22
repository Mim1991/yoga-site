class Booking < ApplicationRecord
  belongs_to :users
  belongs_to :yoga_classes
end
