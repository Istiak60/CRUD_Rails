Rails.application.routes.draw do
  get 'users/index'
  devise_for :users
  resources :users
  get 'welcome/index'
  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"
  root "articles#index"

  resources :articles do
    resources :comments ,only: [:create,:destroy]
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
