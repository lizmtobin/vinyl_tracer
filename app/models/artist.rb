class Artist < ApplicationRecord
  has_many :albums
  has_one :associated_act

  validates :artist_name, :band_members, presence: true
end
