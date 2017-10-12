class DosesController < ApplicationController

before_action :set_restaurant, only: [:new, :create]

  def create
  @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'cocktail/show'
      end
  end

   private
  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def doses_params
    params.require(:dose).permit(:description)
  end
end

