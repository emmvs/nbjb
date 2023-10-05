Rails.application.routes.draw do
  get 'dashboards/dashboard'
  devise_for :users
  constraints ->(request) { request.env['warden'].user } do
    root 'dashboards#dashboard', as: :authenticated_root
  end
  root to: 'pages#home'

  get "about", to: "pages#about"
  get "contact", to: "pages#contact"

  resources :profiles
  resources :places
  resources :nights
  resources :games
  resources :bitch_book_entries
  patch "bitch_book_entry/approved/:id", to: "bitch_book_entries#approved", as: :approve_bitch_book_entry
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
