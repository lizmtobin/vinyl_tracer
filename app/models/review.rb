class Review < ApplicationRecord
  belongs_to :album
  belongs_to :user

  validates :rating, presence: true

end
