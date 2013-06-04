class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_current_hotel

  private
  def set_current_hotel
      @current_hotel = Hotel.find_by_name(request.subdomains.first)
  end

  helper_method :background_images

  def background_images
      Setting.first.assets
  end

end
