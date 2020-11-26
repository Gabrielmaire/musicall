class Owner::InstrumentsController < ApplicationController
  def new
    @category = ["instrument à vent", "instrument à corde", "percussion", "clavier"]
    @owner = current_user
    @instrument = Instrument.new
  end

  def create
    @owner = current_user
    @instrument = Instrument.new(instrument_params)
    @instrument.owner = @owner
    if @instrument.save
      redirect_to profile_path
    else
      render :new
    end
  end

   private
  def instrument_params
    params.require(:instrument).permit(:name, :photo, :category, :description, :price_per_day)
  end
end
