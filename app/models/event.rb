class Event < ApplicationRecord
    belongs_to :event_creator, class_name: 'User'
   # has_many :attendees, class_name: 'Attendee'
    has_many :attendees, class_name: "Attendee", foreign_key: "attendee_id"
end
