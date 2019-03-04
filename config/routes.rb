Rails.application.routes.draw do
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  resources :adventures
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
