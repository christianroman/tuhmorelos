class Room < ActiveRecord::Base
    attr_accessible :hotel_id, :name, :fare, :existence, :available, :max_persons
    belongs_to :hotel
    belongs_to :reservation

    private
    def name_and_fare
	"#{name} - $#{fare}"
    end

end
