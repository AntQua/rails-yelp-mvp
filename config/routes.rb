Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "restaurants#index"
  # resources :restaurants, only: [:index, :show, :new, :create]

  resources :restaurants, only: [:index, :new, :create, :show] do
    # resources :reviews, only: [:new, :create]
    resources :reviews, only: [:create]
  end

  resources :reviews, only: :destroy
end
