class Guest < ActiveRecord::Base
  attr_accessible :name, :email, :phone
  has_one :reservation
  has_one :hotel, :through => :reservation

  #validations
  validates :name, :presence => true, :length => { :minimum => 2 }
  validates :email, :presence => true
  validates :phone, :presence => true

  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/

end
