class InstrumentsController < ApplicationController
  def show
    @instrument = Instrument.find(params[:id])
    @rental_request = RentalRequest.new
  end
end
