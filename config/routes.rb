Rails.application.routes.draw do
  root to: 'home#index'
  resources :videos, only: [:new, :create]
end
