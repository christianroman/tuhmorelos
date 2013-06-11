class Guest < ActiveRecord::Base
  attr_accessible :name, :email, :phone
  belongs_to :hotel
  belongs_to :reservation
end
