class Album < ApplicationRecord
  belongs_to :artist
  belongs_to :seller
  has_one :associated_act
  has_many :favourites, dependent: :destroy
  validates :album_name, :year, :artwork_url, :producers, :record_label, :genre, presence: true
  def get_associated
    # Album.all.sample(6)
    # get an associated act record where the album artist_a is the artist that method is called on
    @acts = []
    @acts << AssociatedAct.find_by(artist: self.artist)
    # get the next associated act where artist_a is the artist_b from the previous associated act
    5.times do
      act = get_act(@acts)
      @acts << act if act
    end
    # repeat until we have 6 associated acts
    @acts
  end

  def get_act(acts)
    act = AssociatedAct.where(artist: acts.last.linked_artist).sample if acts.last && acts.include?(act)
    if !act
      act = AssociatedAct.where(artist: acts.last.linked_artist).sample if acts.last
    end
    act
  end
end

# type,title,release_title,credit,artist,anv,label,genre,style,country,year,
# format,catno,barcode,track,submitter,contributor

# aCtVKDbDpMUcsVOklJkKEnvQAGCDyfemHoXbZZIh
