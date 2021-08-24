class AlbumsController < ApplicationController

  def index
    # @artist = Artist.find(params[:query])
    @albums = params[:query].albums
  end

  def show
    @album = Album.find(params[:id])
  end

  def api_call(artist)
    # url = "https://api.discogs.com/database/search?q=#{query}&token=aCtVKDbDpMUcsVOklJkKEnvQAGCDyfemHoXbZZIh"
    url = "https://musicbrainz.org/ws/2/release?query=*%20AND%20artist:nirvana%20AND%20country:us%20AND%20format:vinyl"

    albums = JSON.parse(open("#{url}?page=#{i + 1}").read)['results']
    albums.each do |album|
      Album.create(
        album_name: album['title'],
        year: album['year'],
        artwork_url: album['cover_image'],
        record_label: album['label'],
        genre: album['genre'],
        producer: album['producer']
      )
           end
  end
end

https://musicbrainz.org/ws/2/artist/5b11f4ce-a62d-471e-81fc-a69a8278c7da?inc=work-rels+artist-rels&fmt=json


