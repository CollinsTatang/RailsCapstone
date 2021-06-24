Rails.application.routes.draw do
  get 'home/index'
  root to: "home#index" 
  resources :users, only: [:new, :create, :show]
  resources :sessions , only: [:new, :create]
  get 'logout', to: 'sessions#destroy'
  post 'Sign_up', to: 'users#create'
  resources :articles do
    resources :votes, only: %i[create destroy]
  end
  resources :categories, only: %i[new create show index]
end
