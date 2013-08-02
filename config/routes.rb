Pdj::Application.routes.draw do
  root :to => 'home#index'

  post '/signup'  => 'restaurant#new'
  # post '/signin' => 'session#create'
end