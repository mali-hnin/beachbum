Rails.application.routes.draw do
  root 'pages#home'
  get '/s', to: 'pages#search'

  mount Attachinary::Engine => "/attachinary"
end
