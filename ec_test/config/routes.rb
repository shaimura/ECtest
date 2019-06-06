Rails.application.routes.draw do

  devise_for :admins, controllers:{
  	sessions: 'admins/sessions',
  	passwords: 'admins/passwords',
  	registrations: 'admins/registrations'
  }
  devise_for :users, controllers:{
  	sessions: 'users/sessions',
  	passwords: 'users/passwords',
  	registrations: 'users/registrations'
  }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only:[:show, :index]
  resources :products, only:[:new, :create, :destroy, :index]
  resources :genres, only:[:new, :create, :destroy]
  resources :labels, only:[:new, :create, :destroy]
  resources :artists, only:[:new, :create, :destroy]
end
