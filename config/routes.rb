Rails.application.routes.draw do
  resources :kitchens
  resources :reservations
  resources :cooks
  resources :kitchen_owners
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
