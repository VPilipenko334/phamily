Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "tasks#index"

  resources :tasks
  post 'tasks/:id',         to: 'tasks#update'
  post 'tasks/:id/destroy', to: 'tasks#destroy'

end
