Rails.application.routes.draw do
  resources :feedbacks
  devise_for :users
  match '/users', to: 'users#index', via: 'get'
  match '/users/:id', to: 'users#show', via: 'get'
  root to: "home#index"
end
  