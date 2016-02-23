Rails.application.routes.draw do

  root 'welcome#index'
  get '/about' => 'welcome#about'
  get 'disclaimers/terms'
  get 'disclaimers/refund'
  get 'disclaimers/privacy'

  resources :messages, only: [:new, :create]
  resources :quotes, only: [:new, :create]
  resources :projects

  devise_for :users

  mount RailsAdmin::Engine => '/dashboard', as: 'rails_admin'
  mount Spree::Core::Engine, :at => '/shop'
end
