Rails.application.routes.draw do
  
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  # get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }

  resources :comments, only: [:index, :show, :create, :update, :destroy]
  resources :posts, only: [:index, :show, :create]
  resources :users, only: :index
  get "/me", to: "users#show"
  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  get "top_three_users", to: 'posts#top_three'
end
