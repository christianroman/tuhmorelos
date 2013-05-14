module Api
    class HotelsController < ApplicationController

	def index
	    @hotels = Hotel.all
	    @status = @hotels.blank? ? "NO_RESULTS" : "OK"
	    self.response.headers["Content-Type"] = "application/json; charset=UTF-8"
	end

    end
end
