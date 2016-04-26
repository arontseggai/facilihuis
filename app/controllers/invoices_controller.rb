class InvoicesController < ApplicationController
  def index
    @invoices = @user.invoices
  end




  private
  def set_user
    @user = User.find(current_user)
  end
end

