class SellersController < ApplicationController



  def index
    if params[:query].present?
      @sellers = Seller.where("location ILIKE ?", "%#{params[:query]}%")
    else
      @sellers = Seller.all
    end
  end

  def show
    @seller = Seller.find(params[:id])
  #   @markers = [{
  #       lat: @seller.latitude,
  #       lng: @seller.longitude
  #     }]
  end


end
