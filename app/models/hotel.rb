class Hotel < ActiveRecord::Base
  attr_accessible :destination_id, :district, :email, :id, :image, :name, :paypal, :phone, :rate_id, :street, :user_id, :video, :website, :zipcode
end
