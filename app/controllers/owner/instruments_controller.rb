class Owner::InstrumentsController < ApplicationController
  def new
    @owner = User.find(params[:owner_id])
    @instrument = Instrument.new
  end

  def create
    @owner = User.find(params[:user_id])
    @instrument = Instrument.new(instrument_params)
    @instrument.owner = @owner
    if @instrument.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

   private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
