class RentalsController < ApplicationController
  def index
    @rentals = Rental.all.includes(:rooms).page(params[:page]).per(1).order(:id)
  end

  def show
  end
end
