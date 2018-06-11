Rails.application.routes.draw do
  get 'users/index'

  root "home#index"

  resources :tickets

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  get '/sessions', to: 'pages#sessions'
  get '/sessions-tailored', to: 'pages#sessions_tailored'
  get '/users', to: 'users#index'

  get '/browser', to: 'pages#browser'
  get '/device_detector', to: 'pages#device_detector'
  get '/user_agent_parser', to: 'pages#user_agent_parser'
  get '/useragent', to: 'pages#useragent'
end
