class DosesController < ApplicationController
  def create
    cocktail = Cocktail.find(params[:cocktail_id])
    dose = Dose.new(dose_params)
    dose.cocktail = cocktail
    dose.save!
    redirect_to dose.cocktail
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :cocktail_id, :ingredient_id)
  end

end
