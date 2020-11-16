Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
<<<<<<< HEAD
  root to: 'pages#home'
=======
  get "listings", to: "listings#index"
>>>>>>> c247cc4577944ed7708cbfffe2dce292e4e2b94e
end
