Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :animals do
    resources :bookings, only: [ :new, :create ]
  end

  get 'dashboard', to: 'pages#dashboard'
  get 'ownerdashboard', to: 'pages#ownerdashboard'
  patch 'bookings/:id', to: 'bookings#update', as: 'update_booking'
end
