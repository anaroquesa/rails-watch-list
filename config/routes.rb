Rails.application.routes.draw do
  # get 'lists', to: 'lists#index'
  # get 'lists/new', to: 'lists#new'
  # post 'lists', to: 'lists#create'
  # get 'lists/:id', to: 'lists#show'

  # get 'bookmarks/new', to: 'bookmarks#new'
  # post 'bookmarks', to: 'bookmarks#create'
  # delete 'bookmarks/:id', to: 'bookmarks#destroy'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

  resources :lists, only: %i[index new create show] do
    resources :bookmarks, only: %i[new create destroy]
  end
end
