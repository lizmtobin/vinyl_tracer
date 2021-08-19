class ReviewsController < ApplicationController

  def new
    @album = Album.find(params[:album_id])
    @review = Review.new

  end

  def create
    @review = Review.new(review_params)
    @album = Album.find(params[:album_id])
    @review.album = @album
    if @review.save
      redirect_to album_path(@album)
    else
      render :new
    end
  end

  def destroy
    if @user = current_user
    @review = Review.find(params[:id])
    @review.delete
    redirect_to album_path(@review.album)
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end




# add to album view show page

# <li class="list-group-item">
#       <%= review.comment %>
#       <%= link_to "Remove",
#                   review_path(review),
#                   method: :delete,
#                   data: { confirm: "Are you sure?" } %>
#     </li>
