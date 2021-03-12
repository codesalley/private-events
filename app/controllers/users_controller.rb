class UsersController < ApplicationController
  def show
    puts current_user
    @user_past_events = current_user.attended_event.past
    @user_upcoming_events = current_user.attended_event.upcoming 
  end
end
