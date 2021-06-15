Rails.application.routes.draw do
  root 'users#index' 
  resources :users, only: [:new, :create, :show]
  resources :sessions , only: [:new, :create]
  get 'logout', to: 'sessions#destroy'
  post 'Sign_up', to: 'users#create'
  resources :articles
  resources :users do
    
  end
end
