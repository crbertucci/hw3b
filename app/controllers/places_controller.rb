class PlacesController < ApplicationController

  def index
    # find all Place rows
    @places = Place.all
    # render companies/index view
  end


def show
  # find a Place
  @place = Place.find_by({ "id" => params["id"] })
  # find Posts for the Place
  @entries = Entry.where({ "place_id" => @place["id"] })
  # render places/show view with details about Place
end

def new
  # render view with new Place form
end

def create
  # start with a new Place
  @place = Place.new

  # assign user-entered form data to Company's columns
  @place["name"] = params["name"]

  # save Company row
  @place.save

  # redirect user
  redirect_to "/places"
end
end