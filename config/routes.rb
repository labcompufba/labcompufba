#  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#  root to: redirect('/posts')
#end

Rails.application.routes.draw do
  devise_for :users
  root 'application#index'
  get '/pesquisador', to: 'pesquisador#index'
end