class Guest < ActiveRecord::Base
  attr_accessible :name, :email, :phone
  has_one :reservation
  has_one :hotel, :through => :reservation
end
