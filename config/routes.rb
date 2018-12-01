Rails.application.routes.draw do

 
  
  get 'reports/new'

  get 'reports/show'

  resources :roulettes
  resources :articles
  resources :categories
  resources :achievements
  resources :comments
  resources :busquedas, only: [:index, :new, :create]
  resources :associations
  resources :graduates
  resources :generations
  devise_for :users
  resources :careers
  resources :searches

  resources :users
  resources :offers
  resources :requests
  resources :reports

  #get 'users/index'
  #get 'users/new'
  #get 'users/show'
  #get 'users/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'

  get "/credencial" => "home#credencial"
  get "/filosofia" => "home#filosofia"
  get "/bienvenida" => "home#bienvenida"
  
end
