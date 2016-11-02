Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index', as: 'homepage'

  # Jobs Routes
  get     "/jobs"              =>     "jobs#index"
  get     "/jobs/new"          =>     "jobs#new"
  post    "/jobs"              =>     "jobs#create"
  get     "/jobs/:id"          =>     "jobs#show"
  get     "/jobs/:id/edit"     =>     "jobs#edit"
  put     "/jobs/:id"          =>     "jobs#update"
  patch   "/jobs/:id"          =>     "jobs#update"
  delete  "/jobs/:id"          =>     "jobs#destroy"

end
