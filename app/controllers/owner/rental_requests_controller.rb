class Owner::RentalRequestsController < ApplicationController
  def accept
    @rental_request = RentalRequest.find(params[:id])
    @rental_request.status = "acceptée"
    @rental_request.save!
    redirect_to profile_path
  end

  def decline
    @rental_request = RentalRequest.find(params[:id])
    @rental_request.status = "refusée"
    redirect_to profile_path
  end
end
