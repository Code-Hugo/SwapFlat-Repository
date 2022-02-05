Rails.application.routes.draw do
  devise_for :users
  root to: 'properties#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :properties do
    resources :bookings, only: [ :index, :new, :create, :my_bookings]
  end
  resources :bookings, only: [ :edit, :update, :destroy ]
end
