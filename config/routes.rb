Markettos::Application.routes.draw do

  devise_for :users

  root 'home#index'

  resources :purchases

  resources :stocks

  resources :items

end
