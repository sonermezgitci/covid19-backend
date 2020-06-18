Rails.application.routes.draw do
resources :quarantines, only: [:index, :show, :create]
resources :symptoms, only: [:index, :show, :create]
resources :users, only: [:index, :show, :create]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
