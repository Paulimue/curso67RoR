Rails.application.routes.draw do
  get 'roles/index'
  get 'roles/new'
  get 'roles/show'
  get 'roles/update'
  get 'roles/delete'
  get 'roles/create'
  resources :roles
  get "perros" => "perros/show"
  resources :mensajes
  resources :models
  resources :usuarios
  resources :rols
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

