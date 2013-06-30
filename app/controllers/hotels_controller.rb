class HotelsController < ApplicationController

    def index
	@hotel = @current_hotel
    end

    def show

	#@hotel = Hotel.find(params[:id])
	#@hotel = Hotel.find_by_slug!(request.subdomain)
	respond_to do |format|
	    format.html {@hotel = Hotel.find_by_slug!(request.subdomain)}
	    format.js {@hotel = Hotel.find(params[:id])}
	end
    end

    def create

	@guest = Guest.new(name: params[:nombre], email: params[:email], phone: params[:telefono])

	respond_to do |format|

	    if @guest.valid?	  
		if @guest.save

		    check_in_date = params[:check_in].to_time
		    check_out_date = params[:check_out].to_time
		    days = ((check_out_date - check_in_date) / 1.day).to_i

		    unless params[:room][:room_id].empty?

			total_amount = days * Room.find(params[:room][:room_id]).fare
			@reservation = Reservation.new(room_id: params[:room][:room_id], guest_id:@guest.id, check_in: params[:check_in], check_out: params[:check_out], adults: params[:adults], children: params[:children], comment: params[:comentario], hotel_id: params[:id], status:0, total_amount:total_amount)

			if @reservation.valid?
			    if @reservation.save

				return_url = root_url

				values = {
				    :business => @reservation.hotel.paypal,
				    :cmd => '_xclick',
				    :upload => 1,
				    :currency_code => 'MXN',
				    :return => return_url,
				    :invoice => @reservation.id,
				    :notify_url => payment_notifications_url,
				    :amount => @reservation.total_amount,
				    :item_name => "#{days} noches en #{@reservation.hotel.name}".encode,
				    :item_number => @reservation.hotel.id,
				    :quantity => 1
				}

				format.json{ render :json => { :location => "https://www.sandbox.paypal.com/cgi-bin/webscr?#{values.to_query}" } }
				#return

			    end
			else

			    @guest.destroy

			    @errors = @reservation.errors.full_messages
			    format.json { render :json => @errors }

			end

		    else

			@errors = ["Habitaci&oacute;n no seleccionada"]
			@guest.destroy
			format.json { render :json => @errors }

		    end
		end
	    else
		@errors = @guest.errors.full_messages
		format.json { render :json => @errors }
	    end

	end

    end

end
