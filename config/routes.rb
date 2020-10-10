Rails.application.routes.draw do

  # read all tasks
  get "tasks", to: "tasks#index"
  # read one task
  get "tasks/:id", to: "tasks#show", as: :task
  # create a task
  get "tasks/new", to: "tasks#new" # The `new` route needs to be *before* `show` route.
  # post "tasks", to: "tasks#create"
  # # update a task
  # get "tasks/:id/edit", to: "tasks#edit"
  # patch "tasks/:id", to: "tasks#update"
  # # delete a task
  # delete "tasks/:id", to: "tasks#destroy"
end
