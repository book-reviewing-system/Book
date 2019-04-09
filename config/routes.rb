Rails.application.routes.draw do
  
  
 
  resources :activities
  resources :categories
  get 'sessions/new'
  resources :books do
    resources :reviews do
       resources :comments
     end
  end
  resources :books do
    resources :user_books
  end
  # resources :reviews
  resources :users do
    member do
      get :following, :followers
      end
     end    
  resources :relationships,       only: [:create, :destroy]
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
