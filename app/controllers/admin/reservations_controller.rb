module Admin
    class ReservationsController < BaseController
	# GET /reservations
	# GET /reservations.json
	def index
	    @reservations = Reservation.all

	    respond_to do |format|
		format.html # index.html.erb
		format.json { render json: @reservations }
	    end
	end

	# GET /reservations/1
	# GET /reservations/1.json
	def show
	    @reservation = Reservation.find(params[:id])

	    respond_to do |format|
		format.html # show.html.erb
	    end
	end

	# GET /reservations/new
	# GET /reservations/new.json
	def new
	    @reservation = Reservation.new

	    respond_to do |format|
		format.html # new.html.erb
	    end
	end

	# GET /reservations/1/edit
	def edit
	    @reservation = Reservation.find(params[:id])
	end

	# POST /reservations
	# POST /reservations.json
	def create
	    @reservation = Reservation.new(params[:reservation])

	    respond_to do |format|
		if @reservation.save
		    format.html { redirect_to [:admin, @reservation], notice: 'Reservacion creada exitosamente.' }
		else
		    format.html { render action: "new" }
		end
	    end
	end

	# PUT /reservations/1
	# PUT /reservations/1.json
	def update
	    @reservation = Reservation.find(params[:id])

	    respond_to do |format|
		if @reservation.update_attributes(params[:reservation])
		    format.html { redirect_to [:admin, @reservation], notice: 'Reservacion actualizada exitosamente.' }
		else
		    format.html { render action: "edit" }
		end
	    end
	end

	# DELETE /reservations/1
	# DELETE /reservations/1.json
	def destroy
	    @reservation = Reservation.find(params[:id])
	    @reservation.destroy

	    respond_to do |format|
		format.html { redirect_to admin_reservations_url }
	    end
	end
    end
end
