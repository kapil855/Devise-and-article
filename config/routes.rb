Rails.application.routes.draw do
	root to: 'home#index'
  resources :articles
  #get 'articles/index'
  devise_for :users, controllers: {omniauth_callbacks: 'users/omniauth_callbacks'}
  #get 'home/index'
	
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
