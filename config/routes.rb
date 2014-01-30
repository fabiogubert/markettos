Markettos::Application.routes.draw do

  root 'home#index'

  resources :purchases

  resources :stocks

  resources :items

end
