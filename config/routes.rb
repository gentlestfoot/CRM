Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "customers#index"

  resources :customers do
    collection do
      get "alphabetized"
      get "missing_email"
    end
  end
end
