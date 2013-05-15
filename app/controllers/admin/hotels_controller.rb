module Admin
    class HotelsController < BaseController
	# GET /hotels
	# GET /hotels.json
	def index
	    @hotels = Hotel.all

	    respond_to do |format|
		format.html # index.html.erb
	    end
	end

	# GET /hotels/1
	# GET /hotels/1.json
	def show
	    @hotel = Hotel.find(params[:id])

	    respond_to do |format|
		format.html # show.html.erb
		format.json { render json: @hotel }
	    end
	end

	# GET /hotels/new
	# GET /hotels/new.json
	def new
	    @hotel = Hotel.new

	    respond_to do |format|
		format.html # new.html.erb
		format.json { render json: @hotel }
	    end
	end

	# GET /hotels/1/edit
	def edit
	    @hotel = Hotel.find(params[:id])
	end

	# POST /hotels
	# POST /hotels.json
	def create
	    @hotel = Hotel.new(params[:hotel])

	    respond_to do |format|
		if @hotel.save
		    format.html { redirect_to [:admin, @hotel], notice: 'Hotel creado exitosamente.' }
		else
		    format.html { render action: "new" }
		end
	    end
	end

	# PUT /hotels/1
	# PUT /hotels/1.json
	def update
	    @hotel = Hotel.find(params[:id])

	    respond_to do |format|
		if @hotel.update_attributes(params[:hotel])
		    format.html { redirect_to [:admin, @hotel], notice: 'Hotel actualizado exitosamente.' }
		else
		    format.html { render action: "edit" }
		end
	    end
	end

	# DELETE /hotels/1
	# DELETE /hotels/1.json
	def destroy
	    @hotel = Hotel.find(params[:id])
	    @hotel.destroy

	    respond_to do |format|
		format.html { redirect_to admin_hotels_url }
	    end
	end
    end
end
