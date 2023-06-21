Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get 'articles', to: 'articles#index'

  get 'articles/new', to: 'articles#new'

  get 'articles/:id', to: 'articles#show', as: 'article'

  post 'articles', to: 'articles#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
