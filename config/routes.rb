Rails.application.routes.draw do
  root to: "tasks#index"

  get "signup", to: "users#new"
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :users, only:[:index,:new,:create,:destroy]   
  resources :tasks
end
