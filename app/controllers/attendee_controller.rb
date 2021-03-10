class AttendeeController < ApplicationController
    def new 
        @attendee = Attendee.new

    end
    def create
        @attendee = current_event.attendees.build
    end
end