Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'projects', to: 'projects#index'
  get "projects/:id", to: "projects#show", as: :project
  get "projects/new", to: "projects#new", as: :new_project
  get "projects/new", to: "projects#create"
  get  "projects/:id/edit", to: "projects#edit", as: :edit_project
  patch "projects/:id", to: "projects#update"
  delete "projects/new", to: "projects#destroy"
  get "skills", to: 'skills#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
