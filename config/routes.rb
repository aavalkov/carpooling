Rails.application.routes.draw do
  root :to => 'locations#index'
  resources :locations
  resources :routes
  resources :stops
end
