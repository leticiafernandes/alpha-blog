Rails.application.routes.draw do
  resources :articles

  get 'about', to: 'pages#about'

  root 'pages#home'
end
