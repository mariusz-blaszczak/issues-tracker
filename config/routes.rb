Rails.application.routes.draw do
  get 'today_entries/index'
  patch 'today_entries/update'
  resources :entries
  resources :issues
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
