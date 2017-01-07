class RentalsController < ApplicationController
  def index
  	@rentals = Rental.where(delete_flg: 0)
  end

  def show
  end
end
