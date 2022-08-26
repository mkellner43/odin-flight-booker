Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'flights#index'
  resources :flights, only: [:index]
  resources :bookings, only: %i[new create show]
  get '/flights/search', to: 'flights#query'
  # Defines the root path route ("/")
  # root "articles#index"
end
