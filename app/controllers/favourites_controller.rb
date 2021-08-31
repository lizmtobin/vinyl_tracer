class FavouritesController < ApplicationController

  # def index
  #   @favourites = Favourite.all
  # end

  def create
    @favourite = Favourite.new
    @album = Album.find(params[:album_id])
    @user = current_user
    @favourite.album = @album
    if @favourite.save
      redirect_to album_path(@album)
    # else

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

  # # def review_params
  #   params.require(:review).permit(:comment, :rating)
  # end

end

