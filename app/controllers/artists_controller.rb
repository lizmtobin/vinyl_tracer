class ArtistsController < ApplicationController

def index
   if params[:query].present?
      @artist = Artist.where("artist_name ILIKE ?", "%#{params[:query]}%")
    else
      @artist = Artist.last(5)
    end
end

def show


end

end
