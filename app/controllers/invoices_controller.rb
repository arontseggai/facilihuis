class InvoicesController < ApplicationController

  before_action :set_apartment

  def index

  end

  private
  def invoice_params
    params.require(:invoices).permit(:apartment_id)
  end


  def set_apartment
    @apartment = Apartment.find(params[:id])
  end
end

