class ApplicationController < ActionController::Base
  protect_from_forgery

  #before_filter :set_current_hotel

  #private
  #def set_current_hotel
  #    @current_hotel = Hotel.find_by_subdomain!(request.subdomains.first)
  #end

end
