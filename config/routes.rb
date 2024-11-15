Rails.application.routes.draw do
  root to: "lists#index"
  resources :lists do
    resources :movie, only: [ :index ]
  end
end
