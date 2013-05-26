module Admin
    class GuestsController < BaseController
	def index
	    @guests = Guest.all
	end

	def show
	    @guest = Guest.find(params[:id])
	end

	def new
	    @guest = Guest.new
	end

	def create
	    @guest = Guest.new(params[:guest])
	    if @guest.save
		redirect_to [:admin, @guest], :notice => "Successfully created guest."
	    else
		render :action => 'new'
	    end
	end

	def edit
	    @guest = Guest.find(params[:id])
	end

	def update
	    @guest = Guest.find(params[:id])
	    if @guest.update_attributes(params[:guest])
		redirect_to [:admin, @guest], :notice  => "Successfully updated guest."
	    else
		render :action => 'edit'
	    end
	end

	def destroy
	    @guest = Guest.find(params[:id])
	    @guest.destroy
	    redirect_to admin_guests_url, :notice => "Successfully destroyed guest."
	end
    end
end
