# app/controllers/places_controller.rb

class PlacesController < ApplicationController
  before_action :set_place, only: %i[show edit update destroy]

  def index
    # if params[:query].present?
    #   @query = params[:query]
    #   @places = Place.where("name ILIKE ?", "%#{params[:query]}%")
    # else
      @places = Place.all
    # end

    # The `geocoded` scope filters only places with coordinates
    @markers = @places.geocoded.map do |place| # ⬅️ Geocoding
      {
        lat: place.latitude,
        lng: place.longitude
      }
    end
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)

    @place.user = current_user
    if @place.save
      redirect_to @place
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    @place.update(place_params)
    redirect_to place_path(@place)
  end

  def destroy
    @place.destroy
    redirect_to places_path
  end

  private

  def set_place
    @place = Place.find(params[:id])
  end

  def place_params
    params.require(:place).permit(
      :name,
      :address,
      :asshole_score,
      :barkeeper_rating,
      :dating_rating,
      :bathroom_rating,
      :beer_price,
      :user
    )
  end
end
