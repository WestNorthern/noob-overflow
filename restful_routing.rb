                  Prefix Verb   URI Pattern                    Controller#Action
        new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
            user_session POST   /users/sign_in(.:format)       devise/sessions#create
    destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
       new_user_password GET    /users/password/new(.:format)  devise/passwords#new
      edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
           user_password PATCH  /users/password(.:format)      devise/passwords#update
                         PUT    /users/password(.:format)      devise/passwords#update
                         POST   /users/password(.:format)      devise/passwords#create
cancel_user_registration GET    /users/cancel(.:format)        users/registrations#cancel
   new_user_registration GET    /users/sign_up(.:format)       users/registrations#new
  edit_user_registration GET    /users/edit(.:format)          users/registrations#edit
       user_registration PATCH  /users(.:format)               users/registrations#update
                         PUT    /users(.:format)               users/registrations#update
                         DELETE /users(.:format)               users/registrations#destroy
                         POST   /users(.:format)               users/registrations#create
                   users GET    /users(.:format)               users#index
                    user GET    /users/:id(.:format)           users#show
               questions GET    /questions(.:format)           questions#index
                         POST   /questions(.:format)           questions#create
            new_question GET    /questions/new(.:format)       questions#new
           edit_question GET    /questions/:id/edit(.:format)  questions#edit
                question GET    /questions/:id(.:format)       questions#show
                         PATCH  /questions/:id(.:format)       questions#update
                         PUT    /questions/:id(.:format)       questions#update
                         DELETE /questions/:id(.:format)       questions#destroy
                 answers GET    /answers(.:format)             answers#index
                         POST   /answers(.:format)             answers#create
              new_answer GET    /answers/new(.:format)         answers#new
             edit_answer GET    /answers/:id/edit(.:format)    answers#edit
                  answer GET    /answers/:id(.:format)         answers#show
                         PATCH  /answers/:id(.:format)         answers#update
                         PUT    /answers/:id(.:format)         answers#update
                         DELETE /answers/:id(.:format)         answers#destroy
                   posts GET    /posts(.:format)               posts#index
                         POST   /posts(.:format)               posts#create
                new_post GET    /posts/new(.:format)           posts#new
               edit_post GET    /posts/:id/edit(.:format)      posts#edit
                    post GET    /posts/:id(.:format)           posts#show
                         PATCH  /posts/:id(.:format)           posts#update
                         PUT    /posts/:id(.:format)           posts#update
                         DELETE /posts/:id(.:format)           posts#destroy
                comments GET    /comments(.:format)            comments#index
                         POST   /comments(.:format)            comments#create
             new_comment GET    /comments/new(.:format)        comments#new
            edit_comment GET    /comments/:id/edit(.:format)   comments#edit
                 comment GET    /comments/:id(.:format)        comments#show
                         PATCH  /comments/:id(.:format)        comments#update
                         PUT    /comments/:id(.:format)        comments#update
                         DELETE /comments/:id(.:format)        comments#destroy
                    root GET    /                              questions#index
