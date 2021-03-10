class CreateAttendees < ActiveRecord::Migration[6.1]
  def change
    create_table :attendees do |t|
      t.string :full_name
      t.string :email

      t.timestamps
    end
  end
end
