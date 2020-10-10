Rails.application.routes.draw do

  # read all tasks
  get "tasks", to: "tasks#index"
  # create a task
  get "tasks/new", to: "tasks#new" # The `new` route needs to be *before* `show` route.
  post "tasks", to: "tasks#create"
  # read one task
  get "tasks/:id", to: "tasks#show", as: :task

  # update a task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"
  # delete a task
  delete "tasks/:id", to: "tasks#destroy"
end
