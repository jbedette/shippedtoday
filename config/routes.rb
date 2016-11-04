Rails.application.routes.draw do

  devise_scope :user do
    authenticated :user do
      root 'users#show', as: :authenticated_root
    end
    unauthenticated do
        root to: 'home#index', as: :unauthenticated_root
    end
  end

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
   resources :ships
 end
  # Users Routes
  # get  "/users"               => "users#index"
  # get "/users/:id" => "users#show", as:'user'

  # ships routes
  get "/users/:user_id/ships/new", to: 'ships#new'
  post "/users/:user_id/ships/new", to: 'ships#create'

  # Jobs Routes
  get     "/jobs"              =>     "jobs#index", as: "jobs"
  get     "/jobs/new"          =>     "jobs#new", as: "new_job"
  post    "/jobs/new"          =>     "jobs#create"
  get     "/jobs/:id"          =>     "jobs#show", as: "job"
  get     "/jobs/:id/edit"     =>     "jobs#edit", as: "edit_job"
  put     "/jobs/:id"          =>     "jobs#update"
  patch   "/jobs/:id"          =>     "jobs#update"
  delete  "/jobs/:id"          =>     "jobs#destroy"





end
