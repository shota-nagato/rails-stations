Rails.application.routes.draw do
  namespace :admin do
    resources :movies, only: [:index]
  end
  resources :movies, only: [:index]
end
