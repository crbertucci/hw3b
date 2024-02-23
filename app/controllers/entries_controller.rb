class EntriesController < ApplicationController

  def index 
    render :inline => "<h1> Entries </h1>"
  end
end
