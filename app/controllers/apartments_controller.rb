class ApartmentsController < ApplicationController
  before_action :set_apartment

  def index
    @apartments = Aparment.all
  end

  def show
    set_cocktail
    @ingredients = @cocktail.ingredients
    @doses = @cocktail.doses
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)

    if @cocktail.valid?
      @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render "new"
    end
  end

  def edit
    set_cocktail
  end

  def update
    set_cocktail
    @cocktail.update(cocktail_params)
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    set_cocktail
    @cocktail.destroy
    redirect_to cocktails_path
  end


  private

  def apartment_params
    params.require(:apartment).permit(:street, :area_code, :house_number, :city, :hotline, :state, :airbnb_link)
  end

  def set_apartment
    @apartment = Apartment.find(params[:id])
  end
end
