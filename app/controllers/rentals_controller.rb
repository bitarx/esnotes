class RentalsController < ApplicationController
  def index
    @rentals = Rental.all.includes(:rooms).page(params[:page]).per(10).order(:id)
  end

  def show
  end
end
