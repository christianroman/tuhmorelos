class HotelsController < ApplicationController

  def index
      @hotel = @current_hotel
  end

  def show
      @hotel = Hotel.find(params[:id])
      respond_to do |format|
	  format.html
      end
  end

  def create
      p '*' * 200
      p params

      @guest = Guest.create(name: params[:nombre], email: params[:email], phone: params[:telefono])

      @reservation = Reservation.create(room_id: params[:room][:room_id], guest_id:@guest.id, check_in: params[:check_in], check_out: params[:check_out], persons: params[:persons], comment: params[:comentario], hotel_id: params[:id], status_id:0)

  end

end
