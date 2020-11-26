class InstrumentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

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
