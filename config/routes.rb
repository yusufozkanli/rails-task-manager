Rails.application.routes.draw do

  #ADD NEW

  get 'tasks/new', to: "tasks#new"
  post "tasks", to: "tasks#create"

  #DISPLAY ALL TASKS

  get "tasks", to: "tasks#index"

  #DISPLAY SINGLE TASKS

  get 'tasks/:id', to: "tasks#show", as: :task

  #UPDATE SINGLE TASK
  get 'tasks/:id/edit', to: "tasks#edit", as: :edit
  patch  "tasks/:id", to: "tasks#update"

  #DELETE TASK
  delete "tasks/:id", to: "tasks#destroy", as: :delete

end
