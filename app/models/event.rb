class Event < ApplicationRecord
  belongs_to :event_creator, class_name: 'User'

  has_many :invites, foreign_key: :attended_event
  has_many :attendee, through: :invites, source: :attendee

  scope :past, -> { where(['date < ?', DateTime.now]) }
  scope :upcoming, -> { where(['date > ?', DateTime.now]) }
  # Ex:- scope :active, -> {where(:active => true)}
end
