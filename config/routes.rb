Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :user_books
  resources :users
  root 'user_books#index'

  resources :books do
    member do
      get :delete
    end
  end
end
