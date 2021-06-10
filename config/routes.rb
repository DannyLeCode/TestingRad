Rails.application.routes.draw do
  devise_for :users
  get 'customers/new'
  get 'static_pages/home'
  get 'static_pages/about'
  get 'static_pages/contact'
  
  get '/signup', to: 'customers#new'
  post '/signup', to: 'customers#create'
  
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  resources :users
  resources :customers
  root 'static_pages#home'
end
