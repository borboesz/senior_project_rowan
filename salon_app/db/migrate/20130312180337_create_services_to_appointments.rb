class CreateServicesToAppointments < ActiveRecord::Migration
  def change
    create_table :services_to_appointments do |t|
      t.integer :appointmentID
      t.integer :serviceID

      t.timestamps
    end
  end
end
