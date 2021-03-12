require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'User model associations' do
    it { should have_many(:events).class_name('Event') }
    it { should have_many(:attended_event).through(:invitations).source(:attended_event) }
  end
end
