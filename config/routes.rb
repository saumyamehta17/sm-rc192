SmRc188::Application.routes.draw do  devise_for :users
  resources :users
  resources :articles
  root 'articles#index'
end
