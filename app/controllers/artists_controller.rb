class ArtistsController < ApplicationController

  def index
    if params[:query].present?
      @artist = Artist.where("artist_name ILIKE ?", "%#{params[:query]}%").first
    else
      @artist = Artist.last(5)
    end
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end
end
