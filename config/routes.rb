Rails.application.routes.draw do
  resources :books
  resources :users
  # get 'static_pages/home'
  # get 'static_pages/help'
  # get 'static_pages/about'
  root 'static_pages#home'
  match "/help",    to: "static_pages#help",    via: "get"
  match "/about",   to: "static_pages#about",   via: "get"
  match "/contact", to: "static_pages#contact", via: "get"
   get  '/signup',  to: 'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
