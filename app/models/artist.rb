class Artist < ApplicationRecord
  has_many :albums

  validates :artist_name, :band_members, presence: true
end
