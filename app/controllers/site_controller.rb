class SiteController < ApplicationController
  
  def index
    if request.post?
      @merchants = Merchant.search_all(params[:search_string])
      @items = Item.search_all(params[:search_string])
    end
  end
  
end