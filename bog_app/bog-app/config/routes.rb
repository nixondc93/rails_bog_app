Rails.application.routes.draw do

  root to: 'creatures#index'
  get '/creatures', to: 'creatures#index', as: 'creatures'
  get '/creatures/new', to: 'creatures#new'
  post '/creatures/', to: 'creatures#create'
  get 'creatures/:id/edit', to: 'creatures#edit'
  patch 'creatures/:id', to: 'creatures#update'
  get '/creatures/:id', to: 'creatures#show', as: 'creature'
  delete '/creatures/:id', to: 'creatures#destroy'
end
