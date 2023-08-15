Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :spaceships, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [:update, :index ]
  get 'my_spaceships', to: 'spaceships#user_index'
end
