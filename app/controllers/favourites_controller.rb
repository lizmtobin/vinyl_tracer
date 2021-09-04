class FavouritesController < ApplicationController

  # def index
  #    @favourites = Favourite.all
  # end

  def create
    @favourite = Favourite.new
    @album = Album.find(params[:album_id])
    @favourite.album = @album
    @user = current_user
    if @favourite.save!
      redirect_to album_path(@album), notice: "album added to favourites!"
    else
      redirect_to album_path(@album), alert: "album not added to favourites!"
    end
  end

  # def destroy
  #   if @user = current_user
  #     @favourite = Favourite.find(params[:id])
  #     @favourite.delete
  #     redirect_to album_path(@favourite.album)
  #   end
  # end

  # private

  # def favourite_params
  #   params.require(:favourite).permit(:album_id, :user_id)
  # end

end

