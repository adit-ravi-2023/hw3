class EntriesController < ApplicationController
  def new
    
  end

  def create
    @entry = Entry.new
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["posted_on"] = params["date"]
    @entry["place_id"] = params["place_id"]
    @entry.save
    redirect_to "/place"
  end
  
end
