class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.integer :appointmentID 
      t.string :text
      t.timestamps
    end
  end
end
