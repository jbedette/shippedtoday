Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :ships

  root 'home#index', as: 'homepage'
  # Users Routes
  get  "/users"               => "users#index"
  get "/users/:id" => "users#show", as:'user'

  # ships routes
  get "/ships/new", to: 'ships#new'
  post "/ships/new", to: 'ships#create'

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
