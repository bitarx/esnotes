class RentalsController < ApplicationController
  def index
    @rentals = Rental.all.includes(:rooms)
  end

  def show
  end
end
