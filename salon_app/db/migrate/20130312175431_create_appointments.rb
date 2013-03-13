class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :userID
      t.date :date
      t.date :datecreated
      t.integer :beauticianID

      t.timestamps
    end
  end
end
