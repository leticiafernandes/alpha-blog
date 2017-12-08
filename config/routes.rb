Rails.application.routes.draw do
  resources :articles

  get 'about', to: 'pages#about'

  get 'signup', to: 'users#new'
  resources :users, except: [:new]

  root 'pages#home'
end
