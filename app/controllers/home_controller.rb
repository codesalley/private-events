class HomeController < ApplicationController 
    before_action :authenticate_user!
    def index
        @past_events = Event.past
        @upcoming_events = Event.upcoming
    end
end