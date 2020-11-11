Rails.application.routes.draw do
  resources :componentes_juegos
  resources :reglas_juegos
  resources :juegos
  root 'juegos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
