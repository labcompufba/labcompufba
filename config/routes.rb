
Rails.application.routes.draw do


  devise_for :users
  resources :application
  root 'application#index'
  resources :laboratorios
  root 'laboratorios#index'
  resources :equipamentos
  root 'equipamentos#index'
  resources :institutos
  root 'institutos#index'
  resources :labequips
  root 'labequips#index'
  resources :user
  root 'user#index'
  
  devise_scope :user do
    get '/login' => 'devise/sessions#new'
    get '/logout' => 'devise/sessions#destroy'
      get '/user' => 'user#index'
  end

end
