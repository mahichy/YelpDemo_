Rails.application.routes.draw do
  resources :reviews
  devise_for :users
  resources :resturents
  get 'pages/about'
  get 'pages/contact'

  root 'resturents#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
