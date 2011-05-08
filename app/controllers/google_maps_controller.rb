class GoogleMapsController < ApplicationController
  respond_to :js

  def index
    @json = Club.all.to_gmaps4rails
  end
  
end
