Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index'
  get "tasks/:id/edit", to: "tasks#edit", as: :edittask
  patch "tasks/:id", to: "tasks#update", as: :updatetask
  get 'tasks/new', to: 'tasks#new', as: :newtask
  post 'tasks', to: 'tasks#create'
  delete 'tasks/:id', to: 'tasks#destroy', as: :deletetask
  get 'tasks/:id', to: 'tasks#show', as: :task
end
