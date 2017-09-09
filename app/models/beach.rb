class Beach < ApplicationRecord
  has_attachment :photos
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
