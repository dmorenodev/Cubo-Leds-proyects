CuboLedsproyect::Application.routes.draw do
  resources :imagenes

  resources :videos

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end