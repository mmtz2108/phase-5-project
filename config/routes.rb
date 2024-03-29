Rails.application.routes.draw do
  resources :movies, only: [:index, :show]
  resources :genres, only: [:index, :show]
  resources :bodytypes, only: [:index, :show]
  resources :features, only: [:index, :show]
  resources :actors
  get 'fallback/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
    # route to test your configuration
    get '/hello', to: 'application#hello_world'

    get '*path',
    to: 'fallback#index',
    constraints: ->(req) { !req.xhr? && req.format.html? }
end
