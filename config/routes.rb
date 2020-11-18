Rails.application.routes.draw do

  root to: 'pages#home'

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :listings do
    resources :bookings, only: [:create ]
  end
  resources :bookings, only: [ :show, :edit, :update ] do
  end

  get 'my_listings', to: 'listings#my_listings', as: 'my_listings'
  get 'my_bookings', to: 'bookings#my_bookings', as: 'my_bookings'
end
