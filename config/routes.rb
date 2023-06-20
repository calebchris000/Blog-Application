Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # gets 'authors/:id', to: "authors#show"
  resources :authors do
    resources :posts do
      resources :comments
    end
  end
  
  get "/authors/:id/posts/new", to: "posts#new", as: 'new_author_post_path'
  get "/authors/:author_id/posts/:post_id/like", to: "likes#create"
  get "/authors/:author_id/posts/:id", to: "posts#show"
  post "/authors/:author_id/posts/:post_id/", to: "posts#create", as: 'post'
  post "/authors/:author_id/posts/:post_id/comments", to: "comments#create", as: 'comment'
  get "/authors", to: "authors#index"
  get "/authors/:id", to: "authors#show"
end
