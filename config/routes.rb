Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "flights#index"
  resources :flights
  get "/bookings", to: "bookings#new"
  get "/flights/search", to: "flights#query"
  # Defines the root path route ("/")
  # root "articles#index"
end
