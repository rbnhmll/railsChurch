Rails.application.routes.draw do


  get 'pages/about'
  resources :posts
  resources :contributors
  devise_for :users, controllers: { registrations: "registrations"}

  root to: "posts#index"

end
