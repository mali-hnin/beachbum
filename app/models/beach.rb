class Beach < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  has_attachments :photos
end
