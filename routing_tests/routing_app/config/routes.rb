Rails.application.routes.draw do
  
  namespace :admin do
  get 'dashboard/main'
  get 'dashboard/user'
  get 'dashboard/blog'
  end

  get 'about', to: 'pages#about'

  get 'contact', to: 'pages#contact', as: 'lead'

  resources :blogs
  resources :posts
  
  get 'posts/*missing', to: 'posts#missing'
  
  get 'query/:something', to: 'pages#something'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'
end
