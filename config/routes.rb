CuboLedsproyect::Application.routes.draw do
  get "memoria/index"
  get "personal/new"
  get "personal/create"
  resources :contactos
  resources :videeoos
  resources :imagenes

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end