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

	@guest = Guest.new(name: params[:nombre], email: params[:email], phone: params[:telefono])
	if @guest.valid?	  
	    if @guest.save

		check_in_date = params[:check_in].to_time
		check_out_date = params[:check_out].to_time
		days = ((check_out_date - check_in_date) / 1.day).to_i

		unless params[:room][:room_id].empty?

		    total_amount = days * Room.find(params[:room][:room_id]).fare
		    @reservation = Reservation.new(room_id: params[:room][:room_id], guest_id:@guest.id, check_in: params[:check_in], check_out: params[:check_out], persons: params[:persons], comment: params[:comentario], hotel_id: params[:id], status:0, total_amount:total_amount)

		    if @reservation.valid?
			if @reservation.save
			    redirect_to Hotel.find(params[:id])
			    return
			end
		    else

			@guest.destroy

			@error_on_reservation = true
			redirect_to Hotel.find(params[:id])

		    end

		else

		    @guest.destroy

		    @error_on_reservation = true
		    redirect_to Hotel.find(params[:id])

		end
	    end
	else
	    @error_on_reservation = true
	    redirect_to Hotel.find(params[:id])
	end

    end

end
