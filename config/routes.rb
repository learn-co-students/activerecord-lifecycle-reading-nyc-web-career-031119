Rails.application.routes.draw do
  resources :posts, only: [:show, :update, :create]
  resources :authors, only: [:show, :update, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
