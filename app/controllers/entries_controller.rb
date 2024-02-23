class EntriesController < ApplicationController

  def index 
    render :inline => "<h1> Entries </h1>"
  end

  def new 
    @entry = Entry.new 

    @entry.place_id = params["company_id"]
end

def create
  @entry = Entry.new
  @entry["title"] = params["title"]
  @entry["description"] = params["posted_on"]
  @entry.save
  redirect_to "/places/#{@entry["place_id"]}"
end
end