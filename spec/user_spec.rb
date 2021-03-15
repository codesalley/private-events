require 'rails_helper'

RSpec.describe 'Homepage', type: :request do
  describe 'Homepage events#index' do
    before { get root_path }
    it 'Return home page with status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'Get new Event' do
    it 'return sign in page unless user us sign in' do
      expect(get(new_event_path)).to redirect_to user_session_path
    end
  end

  describe 'Get new Event' do
    it 'return sign in page unless user us sign in' do
      expect(get(new_invitation_path)).to_not redirect_to user_session_path
    end
  end
end
