#  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#  root to: redirect('/posts')
#end

Rails.application.routes.draw do
  

  resources :equipas
  devise_for :users
  resources :application
  root 'application#index'
  resources :laboratorios
  root 'laboratorios#index'
  resources :equipamentos
  root 'equipamentos#index'
  resources :equipas
  root 'equipas#index'


end