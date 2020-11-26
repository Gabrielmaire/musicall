class RentalRequestsController < ApplicationController
  def create
    @instrument = Instrument.find(params[:instrument_id])
    @rental_request = RentalRequest.new(rental_request_params)
    @rental_request.renter = current_user

    number_of_days = @rental_request.end_date - @rental_request.start_date
    @rental_request.total_price = @instrument.price_per_day * number_of_days

    @rental_request.status = "en attente"
    @rental_request.instrument = @instrument

    if @rental_request.save!
      redirect_to profile_path
    else
      render "instruments/show"
    end
  end

  def index
    @rental_requests = RentalRequest.all
  end

  def validate_status
    @rental_request = RentalRequest.find(params[:rental_request_id])
    @rental_request.status = "acceptée"
    redirect_to profile_path
  end

  def refused_status
    @rental_request = RentalRequest.find(params[:rental_request_id])
    @rental_request.status = "refusée"
    redirect_to profile_path
  end

  private

  def rental_request_params
    params.require(:rental_request).permit(:end_date, :start_date)
  end
end
