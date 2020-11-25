class InstrumentsController < ApplicationController

  def index
    @instruments = Instrument.all

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
