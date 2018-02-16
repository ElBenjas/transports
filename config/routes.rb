Rails.application.routes.draw do
  resource :home
  resources :clients

  root 'home#index'
end
