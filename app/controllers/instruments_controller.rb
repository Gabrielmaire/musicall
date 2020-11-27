class InstrumentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    
    if params[:query].present?
      @instruments = Instrument.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @instruments = Instrument.all
    end

    @markers = @instruments.geocoded.map do |instrument|
      {
        lat: instrument.latitude,
        lng: instrument.longitude
      }
    end
  end

  def show
    @instrument = Instrument.find(params[:id])
    @rental_request = RentalRequest.new
  end
end
