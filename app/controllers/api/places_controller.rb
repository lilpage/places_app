class Api::PlacesController < ApplicationController

  def index 
    @places = Place.all
    render "index.json.jb"
  end

  def show 
    @place = Place.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @place = Place.new(
      name: params[:name],
      address: params[:address],
    )
    @place.save
    render "show.json.jb"
  end

  def update
    @place = Place.find_by(id: params[:id])
    @place.name = params[:name] || @place.name
    @place.address = params[:address] || @place.address
    
    #happy/sad
    if @place.save
      render "show.json.jb"
    else
      render json: {erros: @place.error.full_messages}, status: 406
    end
  end

  def destroy
    place = Place.find_by(id: params[:id])
    #happy/sad
    if place.destroy
      render json: {message: "Deleted!"}
    else
      render json: {errors: place.error.full_messages}, status: 406
    end
  end

end
