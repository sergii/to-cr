Rails.application.routes.draw do
  root "home#index"
  resources :tickets
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  get '/sessions' => 'pages#index'
  get '/browser' => 'pages#browser'
end
