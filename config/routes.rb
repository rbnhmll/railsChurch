Rails.application.routes.draw do

  resources :posts
  devise_for :users, controllers: { registrations: "registrations"}

  get '/.well-known/acme-challenge/:id' => 'posts#letsencrypt'
  root to: "posts#index"

end
