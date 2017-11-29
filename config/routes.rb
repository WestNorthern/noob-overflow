Rails.application.routes.draw do

	devise_for :users, controllers: {
        registrations: 'users/registrations',
        sessions: 'users/sessions'
      }
   

	resources :users, only: [:index, :show] 
  resources :questions
  resources :answers
  resources :posts
  resources :comments

 	root 'questions#index' 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 
end
