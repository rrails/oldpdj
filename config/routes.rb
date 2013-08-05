Pdj::Application.routes.draw do
  root :to => 'home#index'
  resources :restaurants, :only => [:update, :create, :index]
  resources :users

  get '/signin' => 'session#new'
  post '/signin' => 'session#create'
  delete '/signin' => 'session#destroy'
end