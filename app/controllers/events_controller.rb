class EventsController < ApplicationController
  before_action :authenticate_user!, only: %i[create new]
  before_action :find_event, only: %i[edit show update]
  def index
    @past_events = Event.past
    @upcoming_events = Event.upcoming
  end

  def show; end

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

  def find_event
    @current_event = Event.find(params[:id])
  end
end
