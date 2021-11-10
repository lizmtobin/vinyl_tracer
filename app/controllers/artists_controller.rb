class ArtistsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]


  def index
    @artists = Artist.all
    if params[:query].present?
      @artist = Artist.find_by("artist_name ILIKE ?", "%#{params[:query]}%")
    end
  end

  def show
    @artist = Artist.find(params[:id])
  end
end
