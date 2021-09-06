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
  
  resources :genres, only: [:index, :create, :edit, :update]
  
  resources :items, only: [:new, :index, :create, :show, :edit, :update]
  
  resources :admins
  resources :customers, only: [:index]
end
