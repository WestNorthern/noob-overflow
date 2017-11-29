Rails.application.routes.draw do

	devise_for :users, controllers: {
        registrations: 'users/registrations',
        sessions: 'users/sessions'
      }
   


	resources :users, only: [:index, :show] 
  
  resources :answers do
  	resources :comments
  end
  
  resources :posts do
  	resources :comments
  end

  resources :comments do
  	resources :comments
  end

  resources :questions do
  	resources :comments
  end

 	root 'questions#index' 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 
end
