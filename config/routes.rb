Rails.application.routes.draw do
  root 'welcome#index'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get '/settings' => 'users#edit'
  post '/adventures/:id' => 'adventures#add_adventure_to_user', as: :add_adventure
  # get '/users/:username' => 'users#show', as: 'user'

  resources :adventures
  resources :users, except: [:new, :create, :edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
