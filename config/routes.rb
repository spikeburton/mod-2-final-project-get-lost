Rails.application.routes.draw do
  root 'welcome#index'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/signup' => 'users#new'
  post '/signup' => 'users#validate_info', as: 'validate'
  get '/settings' => 'users#edit'
  post '/adventures/:id' => 'adventures#add_adventure_to_user', as: :add_adventure
  post '/adventures' => 'adventures#index'

  resources :adventures
  resources :users, except: [:new, :edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
