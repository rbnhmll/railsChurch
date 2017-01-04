Rails.application.routes.draw do

  get 'pages/about'
  resources :posts
  devise_for :users, controllers: { registrations: "registrations"}

  root to: "posts#index"

end
