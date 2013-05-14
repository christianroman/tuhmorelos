class Hotel < ActiveRecord::Base
  attr_accessible :destination_id, :district, :email, :fare_id, :id, :image, :name, :paypal, :phone, :street, :user_id, :video, :website, :zipcode
  belongs_to :fare
  belongs_to :destination
end
