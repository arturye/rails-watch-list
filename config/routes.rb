# config/routes.rb

Rails.application.routes.draw do
  get 'movies/index'
  get 'movies/show'
  get 'movies/new'
  get 'movies/create'
  get 'movies/edit'
  get 'movies/update'
  get 'movies/destroy'
  root to: 'lists#index'

  resources :lists do
    resources :bookmarks
  end

  resources :movies
end
