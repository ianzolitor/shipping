Rails.application.routes.draw do
  resources :users
  resources :boats
  resources :jobs
  resources :assignments

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
