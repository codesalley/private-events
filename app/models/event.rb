class Event < ApplicationRecord
  belongs_to :event_creator, class_name: 'User'
  validates :date, :title, :descrption, presence: true

  has_many :invitations, foreign_key: :attended_event
  has_many :attendee, through: :invitations, source: :attendee

  scope :past, -> { where(['date < ?', DateTime.now]) }
  scope :upcoming, -> { where(['date > ?', DateTime.now]) }
  # Ex:- scope :active, -> {where(:active => true)}
end
