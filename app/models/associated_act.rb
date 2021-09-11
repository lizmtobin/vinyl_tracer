class AssociatedAct < ApplicationRecord
  belongs_to :artist
  belongs_to :linked_artist, class_name: "Artist", foreign_key: "artist_b_id"
  belongs_to :album

  validates :connection_description, presence: true
end
