Rails.application.routes.draw do
  root "home#index"
  resources :tickets
end