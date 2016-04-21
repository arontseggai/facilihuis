class ApartmentsController < ApplicationController

  def show
    @apartments = Apartment.all
  end
end
