Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # config/routes.rb
  resources :restaurants, only: [:index, :new, :show, :create]
end
