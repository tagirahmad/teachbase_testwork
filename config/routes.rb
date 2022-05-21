# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  root to: 'home#index'
  get :profile, to: 'users#profile'
end
