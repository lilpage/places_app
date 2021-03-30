class Api::PlacesController < ApplicationController

  def index 
    render "index.json.js"
  end

  def show 
    render "show.json.js"
  end

  def create
    render "show.json.js"
  end

  def update
    render "show.json.js"
  end

  def destroy
    render json: ("Deleted!")
  end

end
