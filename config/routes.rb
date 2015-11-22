Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  root 'todo_lists#index'
  resources :todo_lists do
    resources :todo_items, except: [:index]
  end

end
