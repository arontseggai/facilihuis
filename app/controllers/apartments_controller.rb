class ApartmentsController < ApplicationController
  before_action :set_user

  def index
    @apartments = @user.apartments



  end

  def new
    @apartment = Apartment.new
  end



  private

  def set_user
    @user = User.find(current_user)
  end
end
