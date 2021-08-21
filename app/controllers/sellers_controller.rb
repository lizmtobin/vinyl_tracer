class SellersController < ApplicationController

  require 'open-uri'
  require 'nokogiri'

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


private

  def scrape_sellers
    html_content = URI.open("https://www.discogs.com/sell/list?format=Vinyl&format_desc=Album&q=sticky+fingers").read
    doc = Nokogiri::HTML(html_content)

    doc.search('.item_description_title').each_with_index do |element, index|
      "#{index + 1}. #{element.text.strip}"
    end
  end

end
