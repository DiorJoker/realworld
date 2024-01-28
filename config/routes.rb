Rails.application.routes.draw do
  #get 'article/create'
  #get 'article/get'
  #get 'article/update'
  #get 'article/delete'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :articles
end
