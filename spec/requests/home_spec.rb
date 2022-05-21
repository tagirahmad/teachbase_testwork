# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Homes', type: :request do
  describe 'GET /index' do
    it 'renders index page if signed in' do
      sign_in create :user
      get root_path
      expect(response).to render_template :index
    end

    it 'redirects to sign in path if not signed in' do
      get root_path
      expect(response.redirect_url).to eq new_user_session_url
    end
  end
end
