class Album < ApplicationRecord
  belongs_to :artist
  belongs_to :seller

  validates :album_name, :year, :artwork_url, :producer, :record_label, :genre, presence: true
end
