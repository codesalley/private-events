class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :events, class_name: "Event", foreign_key: "event_creator_id"
         has_many :invites, foreign_key: :attendee, class_name: 'Invite'
         has_many :attended_event, through: :invites, source: :attended_event
end
