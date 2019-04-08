Rails.application.routes.draw do
  resources :posts, except: :delete
end
