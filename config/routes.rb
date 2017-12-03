Rails.application.routes.draw do

	devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  devise_scope :user do
    post "/check_username", to: "users/registrations#check_username"
    post "/check_email", to: "users/registrations#check_email"
  end

  delete "/tags", to: "tags#destroy"

	resources :users, only: [:index, :show] 
  resources :reputations, only: [:create]
  
  resources :answers do
    resources :comments
  end
  
  
  resources :posts do
  	resources :comments
    post "/positive_rep", to: 'posts#positive_rep'
    post "/negative_rep", to: 'posts#negative_rep'
  end

  resources :comments do
  	resources :comments
  end

  resources :questions do
  	resources :comments
  end
  
  get 'search/index'

 	root 'questions#index' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 
end
