Rails.application.routes.draw do
  resource :home
  resources :client

  root 'home#index'
end
