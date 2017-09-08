Rails.application.routes.draw do
  root 'pages#home'
  get '/s', to: 'pages#search'
end
