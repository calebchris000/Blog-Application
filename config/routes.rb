Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # gets 'authors/:id', to: "authors#show"
  resources :posts
  
  
  get "/authors/:id/posts", to: "posts#index", as: 'author_posts_path'
  get "/authors/:id/posts/new", to: "posts#new", as: 'new_author_post_path'
  get "/authors/:id/posts/like", to: "posts#like"
  get "/authors/:author_id/posts/:id", to: "posts#show"
  get "/authors", to: "authors#index"
  get "/authors/:id", to: "authors#show"
end
