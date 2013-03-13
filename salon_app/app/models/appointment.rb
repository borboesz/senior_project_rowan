class Appointment < ActiveRecord::Base
  attr_accessible :beauticianID, :date, :datecreated, :userID

  has_and_belongs_to_many :services

  validates :user, presence: true
  validates :date, presence: true
  validates :beauticianID, presence: true

end