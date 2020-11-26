class ProfilesController < ApplicationController
  def show
    @pending_requests  = current_user.rental_requests.where(status: "en attente")
    @accepted_requests = current_user.rental_requests.where(status: "acceptée")
    @refused_requests  = current_user.rental_requests.where(status: "refusée")

    @my_requests = RentalRequest.joins(:instrument).where(instruments: { owner: current_user })
    # @my_pending_requests = @my_requests.where(status: "en attente")

    # @my_accepted_requests = current_user.instruments.rental_requests.where(status: "acceptée")
    # @my_refused_requests  = current_user.instruments.rental_requests.where(status: "refusée")

    # @clavier_instruments = current_user.instrument.where(status: "Clavier")
    # @vent_instruments = current_user.instrument.where(status: "Instrument à vent")

    @users = current_user
  end
end
