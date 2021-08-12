Rails.application.routes.draw do
  #get 'contacto/index'
  get 'contacto' => "contacto#index"
  get 'suscripcion/index'
  get 'tienda/index'
  #get 'aprende/index'
  get 'aprende' => "aprende#index"
  get 'terapiahorticola/index'
  get 'impacto/index'
  resources :venta
  resources :categoria
  resources :productos
  resources :clientes
  #inicio
  get '' => "welcome#index"
  #users
  get "users" => "users#show"
  post "users/new" => "users#create"


  #login y session
  get "login" => "sessions#new"
  post "sessions/new/user" => "sessions#user_create"
  delete "sessions/destroy/user" => "sessions#user_destroy"

  delete '/logins/destroy' =>"sessions#destroy" , as: "logout"

end
