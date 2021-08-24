class Album < ApplicationRecord
  belongs_to :artist
  belongs_to :seller

  validates :album_name, :year, :artwork_url, :producer, :record_label, :genre, presence: true
end

# type,title,release_title,credit,artist,anv,label,genre,style,country,year,
# format,catno,barcode,track,submitter,contributor

# aCtVKDbDpMUcsVOklJkKEnvQAGCDyfemHoXbZZIh
