class Hotel < ActiveRecord::Base
  attr_accessible :destination_id, :district, :id, :image, :name, :paypal, :phone, :rate_id, :street, :user_id, :website, :zipcode
end
