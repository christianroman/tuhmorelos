class Hotel < ActiveRecord::Base
  attr_accessible :destination_id, :district, :email, :fare_id, :id, :image, :name, :paypal, :phone, :street, :user_id, :video, :website, :zipcode, :photos_attributes
  belongs_to :fare 
  belongs_to :destination
  has_many :categorizations
  has_many :categories, :through => :categorizations
  has_many :rooms

  has_many :photos, :dependent => :destroy
  accepts_nested_attributes_for :photos, :reject_if => lambda {|t| t['data'].nil?}, :allow_destroy => true

  def self.search(destinations, fares, categories)
      scope = Hotel.scoped({})
      scope = scope.scoped :conditions => ["hotels.destination_id IN (?)", destinations] unless destinations.blank?
      scope = scope.scoped :conditions => ["hotels.fare_id IN (?)", fares] unless fares.blank?
      scope = scope.scoped :conditions => ["categorizations.category_id IN (?)", categories], :joins => :categorizations unless categories.blank?
      scope = scope.uniq { |x| x[:id] }
      scope
  end

end
