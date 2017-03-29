
Rails.application.routes.draw do


 
  resources :manuequips
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
  resources :manutentions
  root 'manutentions#index'
  resources :manuequips
   
  resources "contacts", only: [:new, :create]

  devise_scope :user do
    get '/login' => 'devise/sessions#new'
    get '/logout' => 'devise/sessions#destroy'
    get '/perfil' => 'devise/registrations#edit'
    get '/user' => 'user#index'
  end

end
