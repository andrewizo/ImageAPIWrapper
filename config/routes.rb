Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'dogs#random'
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get '/dogs/random', to: 'dogs#random'
  get '/cats/random', to: 'cats#random'
  get '/anime/random', to: 'anime#random'
  get '/random_images/random', to: 'random_images#random'
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
