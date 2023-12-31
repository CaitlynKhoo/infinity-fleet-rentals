Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :ships, only: [:index, :show, :new, :create, :update] do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [:update, :index ]
  get 'my_ships', to: 'ships#user_index'

  namespace :owner do
    resources :bookings, only: [:index]
  end
end
