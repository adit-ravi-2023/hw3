class PlaceController < ApplicationController

  def index
    @places = Place.all
  end

  def show
    @place = Place.find_by({"id" => params["id"]})
    @entries = Entry.where({"place_id" => params["id"]})
  end

  def new
    
  end

  def create
    @place = Place.new
    @place["name"] = params["name"]
    @place.save
    redirect_to "/place"
  end

  
end
