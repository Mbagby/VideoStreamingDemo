Rails.application.routes.draw do

    resources :resets, only: [:new, :edit, :create, :update]

resources :categories do
  resources :topics, shallow: true do
    resources :seasons do
      resources :episodes, shallow: true do
        resources :quizes, shallow: true
      end  
    end
  end

end

resources :users do
end

get "/quizes", to: "quizes#index"

get "/", to: "sessions#login"

  get 'login', to: "sessions#login", as: "login"
  post 'login', to: "sessions#attempt_login"

  #signup
  get '/signup', to: "sessions#signup", as: 'signup'
  post '/signup', to: "sessions#create"

  #logout
  delete 'logout', to: "sessions#logout", as: "logout"

#             Prefix Verb   URI Pattern                                   Controller#Action
#             resets POST   /resets(.:format)                             resets#create
#          new_reset GET    /resets/new(.:format)                         resets#new
#         edit_reset GET    /resets/:id/edit(.:format)                    resets#edit
#              reset PATCH  /resets/:id(.:format)                         resets#update
#                    PUT    /resets/:id(.:format)                         resets#update
#     episode_quizes GET    /episodes/:episode_id/quizes(.:format)        quizes#index
#                    POST   /episodes/:episode_id/quizes(.:format)        quizes#create
#  new_episode_quize GET    /episodes/:episode_id/quizes/new(.:format)    quizes#new
#         edit_quize GET    /quizes/:id/edit(.:format)                    quizes#edit
#              quize GET    /quizes/:id(.:format)                         quizes#show
#                    PATCH  /quizes/:id(.:format)                         quizes#update
#                    PUT    /quizes/:id(.:format)                         quizes#update
#                    DELETE /quizes/:id(.:format)                         quizes#destroy
#    season_episodes GET    /seasons/:season_id/episodes(.:format)        episodes#index
#                    POST   /seasons/:season_id/episodes(.:format)        episodes#create
# new_season_episode GET    /seasons/:season_id/episodes/new(.:format)    episodes#new
#       edit_episode GET    /episodes/:id/edit(.:format)                  episodes#edit
#            episode GET    /episodes/:id(.:format)                       episodes#show
#                    PATCH  /episodes/:id(.:format)                       episodes#update
#                    PUT    /episodes/:id(.:format)                       episodes#update
#                    DELETE /episodes/:id(.:format)                       episodes#destroy
#      topic_seasons GET    /topics/:topic_id/seasons(.:format)           seasons#index
#                    POST   /topics/:topic_id/seasons(.:format)           seasons#create
#   new_topic_season GET    /topics/:topic_id/seasons/new(.:format)       seasons#new
#        edit_season GET    /seasons/:id/edit(.:format)                   seasons#edit
#             season GET    /seasons/:id(.:format)                        seasons#show
#                    PATCH  /seasons/:id(.:format)                        seasons#update
#                    PUT    /seasons/:id(.:format)                        seasons#update
#                    DELETE /seasons/:id(.:format)                        seasons#destroy
#    category_topics GET    /categories/:category_id/topics(.:format)     topics#index
#                    POST   /categories/:category_id/topics(.:format)     topics#create
# new_category_topic GET    /categories/:category_id/topics/new(.:format) topics#new
#         edit_topic GET    /topics/:id/edit(.:format)                    topics#edit
#              topic GET    /topics/:id(.:format)                         topics#show
#                    PATCH  /topics/:id(.:format)                         topics#update
#                    PUT    /topics/:id(.:format)                         topics#update
#                    DELETE /topics/:id(.:format)                         topics#destroy
#         categories GET    /categories(.:format)                         categories#index
#                    POST   /categories(.:format)                         categories#create
#       new_category GET    /categories/new(.:format)                     categories#new
#      edit_category GET    /categories/:id/edit(.:format)                categories#edit
#           category GET    /categories/:id(.:format)                     categories#show
#                    PATCH  /categories/:id(.:format)                     categories#update
#                    PUT    /categories/:id(.:format)                     categories#update
#                    DELETE /categories/:id(.:format)                     categories#destroy
#              users GET    /users(.:format)                              users#index
#                    POST   /users(.:format)                              users#create
#           new_user GET    /users/new(.:format)                          users#new
#          edit_user GET    /users/:id/edit(.:format)                     users#edit
#               user GET    /users/:id(.:format)                          users#show
#                    PATCH  /users/:id(.:format)                          users#update
#                    PUT    /users/:id(.:format)                          users#update
#                    DELETE /users/:id(.:format)                          users#destroy
#                    GET    /                                             sessions#login
#              login GET    /login(.:format)                              sessions#login
#                    POST   /login(.:format)                              sessions#attempt_login
#             signup GET    /signup(.:format)                             sessions#signup
#                    POST   /signup(.:format)                             sessions#create
#             logout DELETE /logout(.:format)                             sessions#logout
end
