module Api
    class HotelsController < ApplicationController

	def index
	    @hotels = Hotel.search(params[:destinations], params[:fares], params[:categories], params[:promos])
	    @status = @hotels.blank? ? "NO_RESULTS" : "OK"
	    self.response.headers["Content-Type"] = "application/json; charset=UTF-8"
	end

    end
end
