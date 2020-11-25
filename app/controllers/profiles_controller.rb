class ProfilesController < ApplicationController
  def show
    @pending_requests = current_user.rental_requests.where(status: "en attente")
    @accepted_requests = current_user.rental_requests.where(status: "acceptée")
    @refused_requests = current_user.rental_requests.where(status: "refusée")

    @users = current_user
  end
end
