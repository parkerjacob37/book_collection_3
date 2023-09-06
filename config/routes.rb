Rails.application.routes.draw do
  get 'books/delete'
  get 'main/index'
  get 'tasks/index'
  get 'tasks/new'
  get 'tasks/edit'
  resources :books
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
