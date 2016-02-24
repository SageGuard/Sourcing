Rails.application.routes.draw do
  mount Spree::Core::Engine, :at => '/shop'
  mount RailsAdmin::Engine => '/dashboard', as: 'rails_admin'
  devise_for :users
  root 'welcome#index'
  get 'docs' => 'docs#index'
  get '/about' => 'welcome#about'
  get 'disclaimers/terms'
  get 'disclaimers/refund'
  get 'disclaimers/privacy'

  resources :messages, only: [:new, :create]
  resources :quotes, only: [:new, :create]
  resources :projects
end
