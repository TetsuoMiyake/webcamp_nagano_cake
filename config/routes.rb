Rails.application.routes.draw do
  devise_for :customers, controllers: {
    sessions: 'customers/sessions',
    passwords: 'customers/passwords',
    registrations: 'customers/registrations'
  }
    devise_for :admins, controllers: {
    sessions: 'devise/sessions',
    passwords: 'devise/passwords',
    registrations: 'devise/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  get "about" => "homes#about", as: :about
  get "/:current_customers/my_page" => "customers#show", as: :my_page
  get "/:current_customers/edit" => "customers#edit", as: :edit_customer
  get "/:current_customers/check" => "customers#check", as: :check
  get "/order_addresses" => "addresses#index", as: :addresses
  post "/order_addresses" => "addresses#create"
  get "/order_addresses/:id/edit" => "addresses#edit", as: :edit_address
  patch "/order_addresses/:id/edit" => "addresses#update"
  delete "/order_addresses/:id" => "addresses#destroy", as: :destroy_address
  
  
  resources :items, only: [:index, :show]
  resources :admins
  resources :customers, only: [:index, :show, :update]
  resources :order_details, only: [:index, :show, :edit, :update]
  resources :cart_items, only: [:new, :create, :show, :edit, :destroy]
  
  namespace :admin do
      resources :items, only: [:new, :index, :create, :show, :edit, :update]
      resources :genres, only: [:index, :create, :edit, :update]
      resources :customers, only: [:index, :show, :edit, :update]
      resources :orders, only: [:show, :update]
      resources :order_details, only: [:update]
      root to: 'homes#top'
  end
end
