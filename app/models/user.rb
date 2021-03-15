class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :events, class_name: 'Event', foreign_key: 'event_creator_id'
  has_many :invitations, foreign_key: :attendee, class_name: 'Invitation'
  has_many :attended_event, through: :invitations, source: :attended_event
end
