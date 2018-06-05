Rails.application.routes.draw do
  root "home#index"
  resources :tickets
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  get '/sessions', to: 'pages#sessions'
  get '/browser', to: 'pages#browser'
  get '/device_detector', to: 'pages#device_detector'
  get '/user_agent_parser', to: 'pages#user_agent_parser'
  get '/useragent', to: 'pages#useragent'
end
