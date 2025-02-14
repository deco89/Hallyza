Rails.application.routes.draw do
  devise_for :users, only: :sessions
  root to: "pages#home"

  get 'privacy', to: 'pages#privacy'

  get 'specialties', to: 'pages#specialties'

  get 'institute', to: 'pages#institute'

  get 'contact', to: 'pages#contact'

  # Lista de todos os artigos
  get 'articles', to: 'articles#index'


  # Form para criação de artigos
  get 'articles/new', to: 'articles#new', as: 'new_article'

  resources :articles, path "artigo", param: :slug


  # # Form para criação de artigos
  # get 'articles/new', to: 'articles#new'

  # #Lista um artigo
  # get 'articles/:id', to: 'articles#show', as: 'article'

  # # Cria o artigo
  # post 'articles', to: 'articles#create'

  # # Form para edição
  # get 'articles/:id/edit', to: 'articles#edit', as: 'edit_article'

  # # Faz o update do artigo
  # patch 'articles/:id', to: 'articles#update'

  # # Delete um artigo

  # delete 'articles/:id', to: 'articles#destroy', as: 'delete_article'



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
