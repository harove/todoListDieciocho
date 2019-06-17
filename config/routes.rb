Rails.application.routes.draw do
  get 'todos/index'
  get 'todos/show'

  get '/my_todos', to: 'usertodos#index'

  #devise_for :users

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :todos

  resources :usertodos, only: [:update, :index]


  root to: "todos#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
