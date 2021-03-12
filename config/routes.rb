Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :events, only: [:new, :create, :show, :index]
  resources :invites
  resources :invitations
  get 'user_profile', to: 'users#show'
  root 'events#index'
end
