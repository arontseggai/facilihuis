class ApartmentsController < ApplicationController
  before_action :set_user

  def index
    @apartments = @user.apartments
  end




  private

  def set_user
    @user= User.find(1)
  end
end
