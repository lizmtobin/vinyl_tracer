class AlbumsController < ApplicationController


  require 'open-uri'
  require 'nokogiri'

  def index
    if params[:query].present?
      @albums = Album.where("album_name ILIKE ?", "%#{params[:query]}%")
    else
      @albums = Album.all
    end
  end

  def show
    @album = Album.find(params[:id])
    @next_album = Album.find(params[:id].to_i + 1)
  end


  private

  def scrape_sellers
    html_content = URI.open("https://www.discogs.com/sell/list?format=Vinyl&format_desc=Album&q=sticky+fingers").read
    doc = Nokogiri::HTML(html_content)

    doc.search('.item_description_title').each_with_index do |element, index|
      "#{index + 1}. #{element.text.strip}"
    end
  end
end





  # def api_call(artist)
  #   # url = "https://api.discogs.com/database/search?q=#{query}&token=aCtVKDbDpMUcsVOklJkKEnvQAGCDyfemHoXbZZIh"
  #   url = "https://musicbrainz.org/ws/2/release?query=*%20AND%20artist:nirvana%20AND%20country:us%20AND%20format:vinyl"

  #   albums = JSON.parse(open("#{url}?page=#{i + 1}").read)['results']
  #   albums.each do |album|
  #     Album.create(
  #       album_name: album['title'],
  #       year: album['year'],
  #       artwork_url: album['cover_image'],
  #       record_label: album['label'],
  #       genre: album['genre'],
  #       producer: album['producer']
  #     )
  #          end

  # end


# https://musicbrainz.org/ws/2/artist/5b11f4ce-a62d-471e-81fc-a69a8278c7da?inc=work-rels+artist-rels&fmt=json

