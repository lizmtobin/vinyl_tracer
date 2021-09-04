class FavouritesController < ApplicationController

  def index
       # @user = current_user
    favourites = Favourite.all
    @user_favourites = favourites.select { |favourite|
      @album = Album.find(favourite.album_id)
      favourite.user_id == current_user.id
    }
  end

  def create

    @album = Album.find(params[:album_id])
    @favourite = Favourite.new
    @favourite.album = @album
    @favourite.user_id =current_user.id
    # @user = current_user

    if @favourite.save!
      redirect_to album_path(@album.id), notice: "album added to favourites!"
    else
      redirect_to album_path(@album.id), alert: "album not added to favourites!"

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

