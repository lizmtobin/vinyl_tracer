class Seller < ApplicationRecord
  has_many :albums

  validates :seller_name, :location, :seller_url, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
