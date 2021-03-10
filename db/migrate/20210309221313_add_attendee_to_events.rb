class AddAttendeeToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :attendees, :attendee_id, :integer 
  end
end
