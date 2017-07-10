Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/guests/new', to: "guests#new", as:"appearance"
  get '/appearances/new', to: "guests#appearance"
  resources :guests, only: [:index, :create, :show]
  resources :episodes, only: [:index, :new, :create, :show]
  resources :sessions, only: [:index, :new, :create, :show]
end
