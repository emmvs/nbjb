Rails.application.routes.draw do
  get 'dashboards/dashboard'
  devise_for :users
  root to: 'pages#home'

  get "about", to: "pages#about"
  get "contact", to: "pages#contact"

  resources :users
  resources :places
  resources :nights
  resources :games
  resources :bitch_book_entries
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
