require 'rails_helper'

RSpec.describe Event, type: :model do
  it 'created event should be invalid if title is not given or nil' do
    event = Event.new(title: nil)
    expect(event).to_not be_valid
  end
  it 'created event should be invalid if descrption is not given or nil' do
    event = Event.new(descrption: nil)
    expect(event).to_not be_valid
  end
  describe 'Event association' do
    it { should belong_to(:event_creator).class_name('User') }
    it { should have_many(:attendee) }
  end
end
