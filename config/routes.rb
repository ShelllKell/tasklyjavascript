Rails.application.routes.draw do
  root "task_lists#index"
  get "/signin" => "sessions#new", as: :signin
  post "/signin" => "sessions#create"
  get "/signout" => "sessions#destroy", as: :signout
  get "/about" => "about#about"
  get "/task_lists/new" => "task_lists#new"
  post "/task_lists" => "task_lists#create"
  get "/task_lists/:id/edit" => "task_lists#edit"
  patch "/task_lists/:id" => "task_lists#update", :as => :task_list
  get "/task_lists/:id" => "task_lists#show"
  get "/task_lists/:task_list_id/tasks/new" => "tasks#new"
  post "/task_lists/:task_list_id/tasks" => "tasks#create", :as => :tasks
  delete "/task_lists/:task_list_id/tasks/:id" => "tasks#destroy"

end
