class SearchController < ApplicationController

    def index
	if params
	    @hotels = Hotel.search(params[:destinations], params[:fares], params[:categories])
	    p @hotels
	    p @hotels.count
	end
    end

end
