Rails.application.routes.draw do

  root to: 'todo_lists#index'

  resources :todo_list do
    resources :todo_items
  end

end
