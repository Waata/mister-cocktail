class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update, :destroy]

  def index
    @cocktail = Cocktail.new
    @cocktails = Cocktail.all
  end

  def show
    @dose = Dose.new
  end

  def new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to @cocktail
    else
      render action: 'new'
    end
  end

  def edit
    @cocktail = Cocktail.find(params[:id])
  end

  def update
    if @cocktail.update(cocktail_params)
      redirect_to cocktails_path
    else
      render action: 'edit'
    end
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_path
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :description)
  end
end
