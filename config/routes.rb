CuboLedsproyect::Application.routes.draw do
  resources :videeoos

  resources :imagenes

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end