class DosesController < ApplicationController

before_action :set_cocktail, only: [:new, :create]

  def index
    @doses = Dose.all
  end

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(doses_params)
    @dose.cocktail = @cocktails
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

