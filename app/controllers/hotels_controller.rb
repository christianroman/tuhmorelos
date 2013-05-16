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
end
