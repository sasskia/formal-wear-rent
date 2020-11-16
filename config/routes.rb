Rails.application.routes.draw do

  root to: 'pages#home'

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   resources :listings do
     member do
       get :my_listings
   end
 end
end
