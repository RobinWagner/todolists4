Rails.application.routes.draw do

  resources :sessions, only: [:new, :create, :destroy]

  get "/login" => "sessions#new", as: "login"
  delete "/logout" => "sessions#destroy", as: "logout"

  root to: 'todo_lists#index'

  resources :todo_lists do
    resources :todo_items
  end

end
