class Beach < ApplicationRecord
  attr_accessible :location, :latitude, :longitude

  geocoded_by :location

  after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }
end
