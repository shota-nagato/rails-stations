Rails.application.routes.draw do
  namespace :admin do
    resources :movies
  end
  resources :movies, only: [:index]
  resources :sheets, only: [:index]
end
