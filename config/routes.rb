Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # gets 'authors/:id', to: "authors#show"
  # resources :authors, :posts
  get "/authors/:id/posts", to: "posts#index"
  get "/authors/:author_id/posts/:id", to: "posts#show"
  get "/authors", to: "authors#index"
  get "/authors/:id", to: "authors#show"
end
