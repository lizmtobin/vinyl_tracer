class Association < ApplicationRecord
  belongs_to :artist
  belongs_to :album

  validates :connection_description, presence: true
end
