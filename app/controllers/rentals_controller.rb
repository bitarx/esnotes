class RentalsController < ApplicationController
  def index
    @rentals = Rental.all.includes(:rooms).page(params[:page]).per(10).order(:id)
  end

  def show
    @room = Room.joins(rental: :traffics).select("rentals.*, rooms.*, traffics.*").where(id: params[:id])
    if @room.empty?
      render template: 'errors/error404', status: 404, layout: 'application', content_type: 'text/html'
    end
  end
end
