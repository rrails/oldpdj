Pdj::Application.routes.draw do
  root :to => 'home#index'
  resources :restaurants, :only => [:update, :create, :index]
  resources :users, :only => [:create, :index] do
    member do
      get 'profile'
      post 'profile'
    end
  end
  get '/signin' => 'session#new'
  post '/signin' => 'session#create'
  delete '/signin' => 'session#destroy'
end