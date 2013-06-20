class Room < ActiveRecord::Base
    attr_accessible :hotel_id, :name, :fare, :existence, :available, :max_adults, :max_children
    belongs_to :hotel
    has_many :reservations

    private
    def name_and_fare
	"#{name} - $#{fare}"
    end

end
