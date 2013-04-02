class Feedback < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :appointmentID :text
  validates :appointmentID, presence: true
  validates :text, presence: true 
end
