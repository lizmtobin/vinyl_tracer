class Album < ApplicationRecord
  belongs_to :artist
  belongs_to :seller
  has_one :associated_act

  validates :album_name, :year, :artwork_url, :producers, :record_label, :genre, presence: true
end

# type,title,release_title,credit,artist,anv,label,genre,style,country,year,
# format,catno,barcode,track,submitter,contributor

# aCtVKDbDpMUcsVOklJkKEnvQAGCDyfemHoXbZZIh
