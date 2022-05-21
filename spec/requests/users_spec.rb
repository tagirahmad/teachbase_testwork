# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /profile' do
    context 'when user is logged in' do
      it 'page renders' do
        sign_in create :user
        get profile_path
        expect(response).to render_template :profile
      end
    end

    context 'when user is not logged' do
      it 'redirects to root path' do
        get profile_path
        expect(response.redirect_url).to eq user_session_url
      end
    end
  end
end
