Rails.application.routes.draw do
  resources :categories
  resources :items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "items#index"
end
