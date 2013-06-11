class Reservation < ActiveRecord::Base
    attr_accessible :check_in, :check_out, :guest_id, :room_id, :status, :comment, :persons, :hotel_id, :total_amount
    belongs_to :hotel
    belongs_to :guest
    belongs_to :room

    def status_human
	case status
	when 0
	    'NO pagado'
	when 1
	    'Pagado'
	when 2
	    'Pendiente'
	when 3
	    'Procesado'
	when 4
	    'Cancelado'
	when 5
	    'Denegado'
	end
    end

end
