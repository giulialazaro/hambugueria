Rails.application.routes.draw do
  root "home#index"
  get "bebidas", to: "bebidas#index"
  get "bebidas/new", to: "bebidas#new"
  post "bebidas", to: "bebidas#create"
  get "bebidas/:id/edit", to: "bebidas#edit", as: :edit_bebidas
  patch "bebidas/:id", to:"bebidas#update"
  delete "bebidas/:id/", to: "bebidas#destroy", as: :bebida
  delete 'sessions/new', to:'sessions#destroy', as: :logout
  get 'sessions/new', to: 'sessions#new', as: :authentication_form
  post 'sessions', to: 'sessions#create', as: :authentication
  get "burguers", to: "burguers#index"
  get "burguers/new", to: "burguers#new"
  post "burguers", to: "burguers#create"
  get "burguers/:id/edit", to: "burguers#edit", as: :edit_burguers
  patch "burguers/:id", to:"burguers#update"
  delete "burguers/:id/", to: "burguers#destroy", as: :burguer
  get "contratos", to: "contratos#index"
  get "contratos/new", to: "contratos#new"
  post "contratos", to: "contratos#create"
  get "contratos/:id/edit", to: "contratos#edit", as: :edit_contratos
  patch "contratos/:id", to:"contratos#update", as: :contrato
  delete "contratos/:id/", to: "contratos#destroy", as: :contratinho
end
