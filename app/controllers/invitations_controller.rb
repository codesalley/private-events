class InvitationsController < ApplicationController
  def new
    @invitation = Invitation.new
    @guest_options = User.all.map { |guest| [guest.email, guest.id] }
    @event_options = Event.all.map { |guest| [guest.title, guest.id] }
  end

  def create
    @invitation = Invitation.new(invitation_params)
    if @invitation.save
      redirect_to root_path, notice: 'user added'
    else
      render :new, alert: 'error sending invitation'
    end
  end

  private

  def invitation_params
    params.require(:invitation).permit(:attended_event_id, :attendee_id)
  end
end
