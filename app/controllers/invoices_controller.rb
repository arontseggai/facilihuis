class InvoicesController < ApplicationController
  before_action :set_apartment, :set_user
  def index
    @invoices = @user.invoices
  end




  private

  def invoice_params
    params.require(:invoices).permit(:apartment_id)
  end

  def set_user
    @user = User.find(current_user)
  end

  def set_apartment
    @apartment = @user.invoices.find(params[:apartment_id])
  end
end

