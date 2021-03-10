class EventsController < ApplicationController
    def index 

    end
    def show 
        @current_event = current_user.events.find_by(params[:id])
    end
    def new 
        @event = current_user.events.build
    end
    def create
        @event = current_user.events.build(new_event_params)
        if @event.save
            redirect_to root_path, notice: 'Event Posted'
        else
            redirect_to :new
        end
    end

    private 
    def new_event_params 
        params.require(:event).permit(:title, :venue, :descrption, :date)
    end
end