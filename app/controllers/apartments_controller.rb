  class ApartmentsController < ApplicationController
  before_action :set_user

  def index
    @apartments = @user.apartments
  end

  def show

  end

  def new
    @apartment = Apartment.new
  end

  def create
    @apartment = Apartment.new(apartment_params)

    if @apartment.valid?
      @apartment.save
      redirect_to user_apartments_path(current_user)
    else
      render "new"
    end
  end




  private

  def apartment_params
    params.require(:apartment).permit(:street, :user_id, :house_number, :state)
  end

  def set_user
    @user = User.find(current_user)
  end
end
