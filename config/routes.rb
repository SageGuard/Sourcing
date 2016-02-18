Rails.application.routes.draw do
  root 'welcome#index'
  get '/about' => 'welcome#about'

  resources :messages, only: [:new, :create]
  resources :projects

  devise_for :users

  mount RailsAdmin::Engine => '/dashboard', as: 'rails_admin'

end
