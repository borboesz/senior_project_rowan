class CreateAppointmentsServices < ActiveRecord::Migration
	def change
		create_table :appointments_services, :id => false do |t|
      		t.integer :appointmentID
      		t.integer :serviceID
    	end
	end
end