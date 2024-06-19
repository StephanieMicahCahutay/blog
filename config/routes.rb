# config/routes.rb
Rails.application.routes.draw do
  apipie

  namespace :api do
    namespace :v1 do
      resources :posts do
        resources :comments
      end
    end
  end

  resources :posts

  # Define the root path route ("/")
  root "posts#index"

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
end
