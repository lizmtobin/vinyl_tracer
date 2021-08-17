class Seller < ApplicationRecord
  has_many :albums

  validates :seller_name, :location, :seller_url, presence: true
end
