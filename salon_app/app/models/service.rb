class Service < ActiveRecord::Base
  attr_accessible :name, :price

  has_and_belongs_to_many :appointments
  
	validates :name, presence: true
	validates :price, presence: true
end
