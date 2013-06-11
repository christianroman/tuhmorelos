class Reservation < ActiveRecord::Base
  attr_accessible :check_in, :check_out, :guest_id, :room_id, :status_id, :comment, :persons, :hotel_id
  belongs_to :hotel
  belongs_to :guest
end
