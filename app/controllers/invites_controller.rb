class InvitesController < ApplicationController
def new
    @invite = Invite.new 
end
def create 
    puts invite_params
    @invite = Invite.new(invite_params)
    if @invite.save 
        redirect_to root_path, notice: 'user added'
    else
        render :new, alert: 'error sending invite'
    end
end

private 
def invite_params 
    params.require(:invite).permit(:attended_event_id , :attendee_id)
end
end