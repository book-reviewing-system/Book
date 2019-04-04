Rails.application.routes.draw do
  
  resources :categories
  get 'sessions/new'
  resources :books do
    resources :reviews
  end

  # resources :reviews
  resources :users
  # get 'static_pages/home'
  # get 'static_pages/help'
  # get 'static_pages/about'
  get '/books/:id', to: 'books#show' 
  root 'books#index'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get  '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
