Rails.application.routes.draw do

  root to: 'pages#home'

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :listings do
  end

  get 'my_listings', to: 'listings#my_listings', as: 'my_listings'

end
