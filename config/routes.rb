Rails.application.routes.draw do
  # get 'welcome/index'
  root 'welcome#index'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get '/settings' => 'users#edit'
  # get '/users/:username' => 'users#show', as: 'user'

  resources :adventures
  resources :users, except: [:new, :create, :edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
