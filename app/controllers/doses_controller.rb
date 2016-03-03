class DosesController < ApplicationController
  def create
    dose = Dose.create(dose_params)
    redirect_to dose.cocktail
  end

  private

  def dose_params
    params.require(:dose).permit(:amount, :cocktail_id, :ingredient_id)
  end

end
