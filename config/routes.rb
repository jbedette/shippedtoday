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

 # Ship routes
  get     "/ships"            	  =>     "ships#index", as: "ships"
  get     "/ships/new"        	  =>     "ships#new", as: "new_ship"
  post    "/ships"         	      =>     "ships#create"
  get     "/ships/:id"            =>     "ships#show", as: "ship"
  get     "/ships/:id/edit"       =>     "ships#edit", as: "edit_ship"
  put     "/ships/:id"            =>     "ships#update"
  patch   "/ships/:id"            =>     "ships#update"
  delete  "/ships/:id"            =>     "ships#destroy"

end
