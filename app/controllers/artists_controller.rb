class ArtistsController < ApplicationController

  def new
  end

  def index
    if params[:query].present?
      @artists = Artist.where("artist_name ILIKE ?", "%#{params[:query]}%")
    else
      @artists = Artist.last(5)
    end
  end

  def show
  end

end
