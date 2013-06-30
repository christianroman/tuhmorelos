class ApplicationController < ActionController::Base
  protect_from_forgery

  private
  def load_hotel
      @hotel = Hotel.find_by_slug!(request.subdomain)
  end

  helper_method :background_images

  def background_images
      Setting.first.assets
  end

end
