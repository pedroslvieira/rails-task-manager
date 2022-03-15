Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tasks
  post '/completed/:id', to: 'tasks#completed'
  # get 'tasks', to: 'tasks#index'
  # get 'tasks/new', to: 'tasks#new'
  # post 'tasks', to: 'tasks#create'
  # get 'task/:id', to: 'tasks#show', as: :task
  # get 'task/:id/edit', to: 'tasks#edit', as: :edit_task
  # patch 'task/:id', to: 'tasks#update'
  # patch 'task/:id', to: 'tasks#update'
  # delete 'task/:id', to: 'tasks#destroy'
end
