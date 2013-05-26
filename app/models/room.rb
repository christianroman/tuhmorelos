class Room < ActiveRecord::Base
  attr_accessible :hotel_id, :name, :rate, :existence, :available
end
